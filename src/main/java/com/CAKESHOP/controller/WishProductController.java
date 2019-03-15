package com.CAKESHOP.controller;


import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.dao.ShoppingCart;
import com.CAKESHOP.service.ProductsByStoreService;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.ShoppingCartService;
import com.CAKESHOP.service.WishProductService;
import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class WishProductController {
    @Resource
    WishProductService wishProductService;
    @Resource
    ShoppingCartService shoppingCartService;
    @Resource
    ProductsByStoreService productsByStoreService;
    @Resource
    ProductsService productsService;

    @RequestMapping(value = "look_wish_list")
    public ModelAndView look_wish_list(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.querygetWishList(request,modelAndView);
        displayShoppingCart(request, modelAndView);
        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);
        modelAndView.setViewName("wish_list.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "delete_wish")
    public ModelAndView delete_wish(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.querydeleteWish(request);
        modelAndView.setViewName("look_wish_list");
        return modelAndView;
    }

    @RequestMapping(value = "delete_all")
    public ModelAndView delete_all(HttpServletRequest request) throws  Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.querydeleteAllWish(request);
        modelAndView.setViewName("look_wish_list");
        return modelAndView;
    }

    @RequestMapping(value = "add_wish", method = RequestMethod.POST)
    public Map<String, String> add_wish(HttpServletRequest request) throws Exception {
        Map<String, String> map =  new HashMap<String, String>();
        ModelAndView modelAndView = new ModelAndView();
        int state = wishProductService.queryaddWish(request,modelAndView);
        if(state==1)
            map.put("succ","success");
        else
            map.put("succ","fail");
        return map;
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
        double productPriceArray[] = new double[shoppingCartProductsNum];
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

        mv.addObject("pictureUrlArrayList", pictureUrlArrayList);
        mv.addObject("productNameArrayList", productNameArrayList);
        mv.addObject("storeNameArrayList", storeNameArrayList);
        mv.addObject("shoppingCartsList", shoppingCartsList);
        mv.addObject("productPriceArray",productPriceArray);
        mv.addObject("totalPrice",totalPrice);
    }
}
