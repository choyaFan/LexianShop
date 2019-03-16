package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Browse;
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
public class BrowseHistory {
    @Autowired
    private BrowseHistoryService browseHistoryService;
    @Resource
    ShoppingCartService shoppingCartService;
    @Resource
    ProductsByStoreService productsByStoreService;
    @Resource
    ProductsService productsService;


    public Browse browse = new Browse();
    public User userTransfer = new User();

    @RequestMapping(value = "browsehistory.action")
    public ModelAndView browseGet(HttpServletRequest request) throws Exception {
        GlobalStatus globalStatus = new GlobalStatus();
        ModelAndView modelAndView =new ModelAndView();

        //通过手机号来查询浏览记录
        browse.setUserPhone(userTransfer.user_phone_transfer);
        List<Browse> browseData = browseHistoryService.selectBrowseHistory(browse);

        int num = browseData.size();
        int productIdArray[] = new int[num];
        int StoreIdArray[] = new int[num];

        String productNameArray[] = new String[num];
        String storeNameArray[] = new String[num];

        for(int i = 0;i < num;i++){
            productIdArray[i] = browseData.get(i).getProductId();
            StoreIdArray[i] = browseData.get(i).getStoreId();

            productNameArray[i] = browseHistoryService.queryProductName(productIdArray[i]);
            storeNameArray[i] = browseHistoryService.queryStoreName(StoreIdArray[i]);

        }

        List<String> productNameArrayList = Arrays.asList(productNameArray);
        List<String> storeNameArrayList = Arrays.asList(storeNameArray);

        System.out.println("浏览信息"+browseData);
        if(globalStatus.get()==1){
            modelAndView.addObject("productNameArrayList",productNameArrayList);
            modelAndView.addObject("storeNameArrayList",storeNameArrayList);
            modelAndView.addObject("browseData",browseData);
            displayShoppingCart(request, modelAndView);

            JSONObject jsonObject = productsService.getCategoriesMapperJson();
            modelAndView.addObject("categoryjson", jsonObject);
            modelAndView.setViewName("browsehistory.jsp");
        }
        else{
            modelAndView.setViewName("sign_in.jsp");
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
