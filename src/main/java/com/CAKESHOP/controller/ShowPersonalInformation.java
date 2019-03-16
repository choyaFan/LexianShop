package com.CAKESHOP.controller;


import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.dao.ShoppingCart;
import com.CAKESHOP.service.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

@Controller
public class ShowPersonalInformation {
    @Autowired
    public ShowPersonalInformationService showPersonalInformationService;
    public PersonalInformation user = new PersonalInformation();
    @Resource
    public SignInService signinService;

    @Resource
    ShoppingCartService shoppingCartService;

    @Resource
    ProductsByStoreService productsByStoreService;

    @Resource
    ProductsService productsService;

    public User users = new User();


    @RequestMapping ("ShowPersonalInformation.action")
    public ModelAndView personalData(HttpServletRequest request) throws Exception{
        GlobalStatus globalStatus = new GlobalStatus();
        System.out.println("登陆状态查询"+globalStatus.get());
        System.out.println("登陆手机号"+users.user_phone_transfer);

        List<PersonalInformation> personalData = showPersonalInformationService.queryUserInformation(users.user_phone_transfer);
        System.out.println("数据库查询结果"+personalData);
        ModelAndView modelAndView =new ModelAndView();
        if(globalStatus.get()==1){
            modelAndView.addObject("personalData",personalData);
            JSONObject jsonObject = productsService.getCategoriesMapperJson();
            modelAndView.addObject("categoryjson", jsonObject);


            //添加购物车
            displayShoppingCart(request, modelAndView);

            modelAndView.setViewName("ShowPersonalInformation.jsp");
        }
        else{
            modelAndView.setViewName("sign_in.jsp");
    }
        return modelAndView;
    }

    @RequestMapping ("revisePersonalInformation.action")
    public ModelAndView revisePersonalInformation(HttpServletRequest request){
        ModelAndView modelAndView =new ModelAndView();

        String user_name = request.getParameter("user_name");
        String user_password = request.getParameter("user_password");
        String gender_temporary = request.getParameter("gender");
        char gender = (gender_temporary.toCharArray())[0];
        String email=request.getParameter("email");

        user.setUser_phone(users.user_phone_transfer);//获得用户电话号
        user.setUser_name(user_name);
        user.setUser_password(user_password);
        user.setGender(gender);
        user.setEmail(email);

        showPersonalInformationService.reviseUserInformation(user);
        modelAndView.setViewName("index.jsp");
        return modelAndView;
    }

    @RequestMapping ("revisePersonalInformationConfirm.action")
    public ModelAndView revisePersonalInformationConfirm(HttpServletRequest request){
        ModelAndView modelAndView =new ModelAndView();
        String user_password_input = request.getParameter("user_password");//获取界面输入密码
        user.setUser_phone(users.user_phone_transfer);
        System.out.println("密码确认输入"+user_password_input);
        System.out.println("输入手机号确认"+user.getUser_phone());
        String user_password = signinService.login(user);//利用登陆部分的代码来再次进行密码提取
        System.out.println("密码提取结果"+user_password);
        if(user_password_input.equals(user_password)) {
            modelAndView.setViewName("revisePersonalInformation.jsp");
        }else{
            modelAndView.setViewName("revisePersonalInformationConfirm.jsp");
        }
        return modelAndView;
    }

    public void displayShoppingCart(HttpServletRequest request, ModelAndView mv) throws Exception {
        int i=0;
        HttpSession session = request.getSession(true);
        String userPhone = (String)session.getAttribute("userPhone");
        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setUserPhone(userPhone);
        List<ShoppingCart> shoppingCartsList = shoppingCartService.queryCartInformation(shoppingCart);
        int shoppingCartProductsNum = shoppingCartsList.size();
        mv.addObject("shoppingCartsList",shoppingCartsList);

        int productIdArray[] = new int[shoppingCartProductsNum];// 从返回值中获取商品ID
        int StoreIdArray[] = new int[shoppingCartProductsNum];
        String pictureUrlArray[] = new String[shoppingCartProductsNum];//通过商品ID获得图片的url，准备传到界面上显示
        String productNameArray[] = new String[shoppingCartProductsNum];
        String storeNameArray[] = new String[shoppingCartProductsNum];
        Double productPriceArray[] = new Double[shoppingCartProductsNum];
        double totalPrice = 0;

        for(i = 0;i < shoppingCartProductsNum;i++){
            productIdArray[i] = shoppingCartsList.get(i).getProductId();
            StoreIdArray[i] = shoppingCartsList.get(i).getStoreId();
            pictureUrlArray[i] = shoppingCartService.queryPictureUrl(productIdArray[i]);
            productNameArray[i] = shoppingCartService.queryProductName(productIdArray[i]);
            storeNameArray[i] = shoppingCartService.queryStoreName(StoreIdArray[i]);
            ProductsByStore tmp = productsByStoreService.selectByProductAndStore(shoppingCartsList.get(i).getProductId(),shoppingCartsList.get(i).getStoreId());
            productPriceArray[i] = tmp.getOriginalPrice()*tmp.getDiscount();
            totalPrice+=productPriceArray[i]*shoppingCartsList.get(i).getAmount();
        }
        List<String> pictureUrlArrayList = Arrays.asList(pictureUrlArray);
        List<String> productNameArrayList = Arrays.asList(productNameArray);
        List<String> storeNameArrayList = Arrays.asList(storeNameArray);
        List<Double> productPriceArrayList = Arrays.asList(productPriceArray);

        mv.addObject("pictureUrlArrayList", pictureUrlArrayList);
        mv.addObject("productNameArrayList", productNameArrayList);
        mv.addObject("storeNameArrayList", storeNameArrayList);
        mv.addObject("shoppingCartsList", shoppingCartsList);
        mv.addObject("productPriceArrayList",productPriceArrayList);
        mv.addObject("totalPrice",totalPrice);
    }

}
