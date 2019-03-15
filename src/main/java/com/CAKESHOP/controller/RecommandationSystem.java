package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.service.OrdersService;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.UsersRSService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.swing.*;
import java.util.*;


@RestController
public class RecommandationSystem {
    @Resource
    OrdersService ordersService;
    @Resource
    ProductsService productsService;
    @Resource
    UsersRSService usersRSService;

    private static Map<String,Object> temp =new HashMap<String,Object>();

    public static Map<String, Object> getTemp() {
        return temp;
    }

    @Scheduled(cron = "* * * * * ?")
    public void RSDriver(){
        //RecommandationSystem rs = new RecommandationSystem();
        this.getAllSimilarity();
    }

    //获取用户行为矩阵
    public double[] getNumByCustomer(String userPhone) {
        List<Orders> ordersList = ordersService.selectByUserId(userPhone);
        int totalNum = productsService.querycountThirdCategory();
        List<Map<String,String>> thirdCategoryList = productsService.queryselectThirdCategory();
        int index = 0;

        double [] vectore =new double[totalNum];
        for(Map<String,String> thirdCategory:thirdCategoryList) {
            for(Orders order:ordersList){
                if(productsService.querygetProductThirdCategory(order.getProductId()).equals(thirdCategory.get("third_category")))
                    vectore[index]=vectore[index]+order.getAmount();

            }
            index++;
        }
        return vectore;
    }

    //计算用户间相似度
    public double countSimilarity(double [] a,double [] b){
        double total=0;
        double alength=0;
        double blength=0;
        for(int i=0;i<a.length;i++){
            total=total+a[i]*b[i];
            alength=alength+a[i]*a[i];
            blength=blength+b[i]*b[i];
        }
        double down=Math.sqrt(alength)*Math.sqrt(blength);
        double result=0;
        if(down!=0){
            result =total/down;
        }
        return result;
    }

    //取相似度最高的n个用户
    public List<Map.Entry<String,Double>> getMaxSimilarity(String userPhone){
        int totalNum = usersRSService.querygetUsersNum();
        double vectorMain[] = getNumByCustomer(userPhone);
        Map<String,Double> result = new HashMap<String, Double>();
        for(Map<String, String> everyUserPhone: usersRSService.queryselectAllUsersPhone()) {
            if(everyUserPhone.get("user_phone")!=userPhone) {
                double vectorEve[] = getNumByCustomer(everyUserPhone.get("user_phone"));
                double similarity = countSimilarity(vectorMain, vectorEve);
                result.put(everyUserPhone.get("user_phone"), similarity);
            }
        }
        LinkedList<Map.Entry<String,Double>> list = new LinkedList<Map.Entry<String,Double>>(result.entrySet());
        Collections.sort( list, new Comparator<Map.Entry<String,Double>> () {
            public int compare( Map.Entry<String,Double> o1, Map.Entry<String,Double> o2 )
            {
                return (o2.getValue()).compareTo( o1.getValue() );
            }
        });
        return list;
    }

    //获得相似用户集合购买的商品,统计相似用户购买的商品的数量，进行排序
    public Map<String,ProductNumModel> getProducts(List<Map.Entry<String,Double>> list){
        List<String> simCustomers =new ArrayList<String>();
        System.out.println("相似度高的3个用户  ");
        for(int i=0;i<list.size()&&i<3;i++){
            String id =list.get(i).getKey();
            simCustomers.add(id);
        }
        Map<String,ProductNumModel> map =new HashMap<String,ProductNumModel>();
        for(String customer:simCustomers){
            List<Orders> ordersList = ordersService.selectByUserId(customer);
            for(Orders order: ordersList){
                ProductNumModel model=null;
                if(map.containsKey(String.valueOf(order.getProductId()))){
                    model=map.get(String.valueOf(order.getProductId()));
                    model.number+=order.getAmount();
                }else{
                    model=new ProductNumModel();
                    model.product=order.getProductId();
                    model.number=order.getAmount();
                }
                map.put(String.valueOf(order.getProductId()),model);
            }
        }
        return map;
    }

    //调用函数
    public Map<String,Object> getAllSimilarity(){



        Map<String,Object> map =new HashMap<String,Object>();

        Object content=null;


        List<Map<String, String>> tm = usersRSService.queryselectAllUsersPhone();

        for(Map<String, String> everyUserPhone: tm){
            List<Map.Entry<String,Double>> list =getMaxSimilarity(everyUserPhone.get("user_phone"));
            Map<String,ProductNumModel> result =getProducts(list);
            LinkedList<Map.Entry<String,ProductNumModel>> result_list = new LinkedList<Map.Entry<String,ProductNumModel>>(result.entrySet());
            Collections.sort( result_list, new Comparator<Map.Entry<String,ProductNumModel>> () {
                public int compare( Map.Entry<String,ProductNumModel> o1, Map.Entry<String,ProductNumModel> o2 )
                {
                    return (o2.getValue().number > o1.getValue().number)?1:0;
                }
            });
            temp.put(everyUserPhone.get("user_phone"),result_list);
        }

        return temp;
    }






}
