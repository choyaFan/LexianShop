package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.dao.PictureUrl;
import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.dao.ShoppingCart;
import com.CAKESHOP.service.ProductsByStoreService;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.ShoppingCartService;
import net.sf.json.JSONObject;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.OrderComparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

@Controller
public class ShoppingCartController {
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Resource
    ProductsByStoreService productsByStoreService;
    @Resource
    ProductsService productsService;

    private ShoppingCart shoppingCart = new ShoppingCart();
    public User userTransfer = new User();
//    public double totalPrice = 0;

    @RequestMapping(value = "shoppingCart.action")
    public ModelAndView shoppingCartGet(HttpServletRequest request) {
        GlobalStatus globalStatus = new GlobalStatus();
        ModelAndView modelAndView =new ModelAndView();

        shoppingCart.setUserPhone(userTransfer.user_phone_transfer);
        List<ShoppingCart> cartData=shoppingCartService.queryCartInformation(shoppingCart);
        int num = cartData.size();
        int productIdArray[] = new int[num];// 从返回值中获取商品ID
        int StoreIdArray[] = new int[num];
        String pictureUrlArray[] = new String[num];//通过商品ID获得图片的url，准备传到界面上显示
        String productNameArray[] = new String[num];
        String storeNameArray[] = new String[num];
        double productPriceArray[] = new double[num];
        double totalPrice = 0;

        for(int i = 0;i < num;i++){
            productIdArray[i] = cartData.get(i).getProductId();
            StoreIdArray[i] = cartData.get(i).getStoreId();
            pictureUrlArray[i] = shoppingCartService.queryPictureUrl(productIdArray[i]);
            productNameArray[i] = shoppingCartService.queryProductName(productIdArray[i]);
            storeNameArray[i] = shoppingCartService.queryStoreName(StoreIdArray[i]);
            ProductsByStore tmp = productsByStoreService.selectByProductAndStore(cartData.get(i).getProductId(),cartData.get(i).getStoreId());
            productPriceArray[i] = tmp.getOriginalPrice()*tmp.getDiscount();
            totalPrice+=productPriceArray[i]*cartData.get(i).getAmount();
   //         userTransfer.totalPrice += cartData.get(i).getTotalPrice();

        }
        List<String> pictureUrlArrayList = Arrays.asList(pictureUrlArray);
        List<String> productNameArrayList = Arrays.asList(productNameArray);
        List<String> storeNameArrayList = Arrays.asList(storeNameArray);

        if(globalStatus.get()==1)
        {
            modelAndView.addObject("pictureUrlArrayList",pictureUrlArrayList);
            modelAndView.addObject("productNameArrayList",productNameArrayList);
            modelAndView.addObject("storeNameArrayList",storeNameArrayList);

            modelAndView.addObject("productPriceArray",productPriceArray);
            modelAndView.addObject("totalPrice",totalPrice);
            modelAndView.addObject("cartData",cartData);
            JSONObject jsonObject = productsService.getCategoriesMapperJson();
            HttpSession session = request.getSession(true);

            modelAndView.addObject("categoryjson", jsonObject);

 //           modelAndView.addObject("userTransfer ",userTransfer );
            modelAndView.setViewName("shoppingCart.jsp");
        }else{
            modelAndView.setViewName("sign_in.jsp");
        }

        return modelAndView;
    }


    @RequestMapping(value = "shoppingCartDelete.action")
    public ModelAndView Delete(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        int productIdSelect = Integer.parseInt(request.getParameter("condition"));
        System.out.println("显示删除ID:"+productIdSelect);
        shoppingCart.setProductId(productIdSelect);
        shoppingCartService.deleteCart(shoppingCart);

        modelAndView.setViewName("shoppingCart.action");
        return modelAndView;
    }

    @RequestMapping(value = "shoppingCartAdd.action")
    public ModelAndView Add(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        int productIdSelect = Integer.parseInt(request.getParameter("condition"));
        System.out.println("显示数量增加商品ID:"+productIdSelect);
        shoppingCart.setProductId(productIdSelect);
        shoppingCartService.addCartInformation(shoppingCart);
        modelAndView.setViewName("shoppingCart.action");
        return modelAndView;
    }

    @RequestMapping(value = "shoppingCartSubtract.action")
    public ModelAndView Subtract(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        int productIdSelect = Integer.parseInt(request.getParameter("condition"));
        System.out.println("显示数量减少商品ID:"+productIdSelect);
        shoppingCart.setProductId(productIdSelect);
        shoppingCartService.subtractCartInformation(shoppingCart);
        modelAndView.setViewName("shoppingCart.action");
        return modelAndView;
    }

    @RequestMapping(value = "checkOut.action")
    public ModelAndView checkOut(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();

        shoppingCart.setUserPhone(userTransfer.user_phone_transfer);
        List<ShoppingCart> cartData=shoppingCartService.queryCartInformation(shoppingCart);
        int num = cartData.size();

        Calendar c = Calendar.getInstance();//可以对每个时间域单独修改
     //   int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        int date = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        int second = c.get(Calendar.SECOND);
        int order_id = month*((int)Math.pow(10,8))+date*((int)Math.pow(10,6))+ hour*((int)Math.pow(10,4))+minute*((int)Math.pow(10,2))+second;
        System.out.println("订单号"+order_id);

        for(int i = 0;i<num;i++){
            Orders order = new Orders();
            order.setOrderId(order_id);
            order.setUserPhone(userTransfer.user_phone_transfer);
            order.setProductId(cartData.get(i).getProductId());
            order.setStoreId(cartData.get(i).getStoreId());
            order.setAmount(cartData.get(i).getAmount());
            order.setSinglePrice(cartData.get(i).getSinglePrice());
            order.setTotalPrice(cartData.get(i).getTotalPrice());
            order.setOrderStatus(1);
            order.setTimeStamp(new Timestamp(System.currentTimeMillis()));
            shoppingCartService.createOrder(order);
        }

        modelAndView.setViewName("shoppingCart.action");
        return modelAndView;
    }

}
