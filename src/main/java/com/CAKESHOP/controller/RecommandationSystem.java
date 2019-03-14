package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.service.OrdersService;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.UsersRSService;

import javax.annotation.Resource;
import java.io.InputStream;
import java.util.*;

public class RecommandationSystem {
    @Resource
    OrdersService ordersService;
    @Resource
    ProductsService productsService;
    @Resource
    UsersRSService usersRSService;

    //获取用户行为矩阵
    public double[] getNumByCustomer(String userPhone) {
        List<Orders> ordersList = ordersService.selectByUserId(userPhone);
        int totalNum = productsService.querycountProducts();
        List<String> thirdCategoryList = productsService.queryselectThirdCategory();
        int index = 0;

        double [] vectore =new double[totalNum];
        for(String thirdCategory:thirdCategoryList) {
            for(Orders order:ordersList){
                if(productsService.querygetProductThirdCategory(order.getProductId()).equals(thirdCategory))
                    vectore[index]=vectore[index]+order.getAmount();
                index++;
            }
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
        for(String everyUserPhone: usersRSService.queryselectAllUsersPhone()) {
            if(everyUserPhone!=userPhone) {
                double vectorEve[] = getNumByCustomer(everyUserPhone);
                double similarity = countSimilarity(vectorMain, vectorEve);
                result.put(everyUserPhone, similarity);
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

        Map<Long,Object> temp =new HashMap<Long,Object>();
        /*
        for(String everyUserPhone: usersRSService.queryselectAllUsersPhone()){
            List<Map.Entry<String,Double>> list =this.getMaxSimilarity(everyUserPhone);
            Map<String,ProductNumModel> result =getProducts(list);
            List<Product> list1=sortProduct(result);
            temp.put(c.getId(),list1);
        }
            JSONObject object=new JSONObject(temp);
            bufferedWriter.write(object.toString());
            bufferedWriter.flush();
            if(object!=null) {
                content = object.get(customer.getId() + "");
            }
        map.put("msg","获取成功");
        map.put("content",content);
        */
        return map;
    }






}
