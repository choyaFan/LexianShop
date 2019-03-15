package com.CAKESHOP.controller;

import com.CAKESHOP.dao.BranchStore;
import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.dao.ShoppingCart;
import com.CAKESHOP.service.ProductsByStoreService;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.ShoppingCartService;
import com.CAKESHOP.service.StoresService;
import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
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
public class DisplaySingleProduct {
    @Resource
    ProductsService productsService;
    @Resource
    StoresService storesService;
    @Resource
    ShoppingCartService shoppingCartService;
    @Resource
    ProductsByStoreService productsByStoreService;

    @RequestMapping(value = "single_pro")
    public ModelAndView single_pro(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        productsService.querygetSingleProduct(request, modelAndView);


        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);


        //添加购物车
        HttpSession session = request.getSession(true);
        displayShoppingCart(request, modelAndView);


        modelAndView.setViewName("single_product.jsp");
        return modelAndView;
    }

    /*
    @RequestMapping(value = "add_shopping_cart")
    public ModelAndView add_shopping_cart(HttpServletRequest request) throws  Exception {
        ModelAndView modelAndView = new ModelAndView();
        productsService.queryaddShoppingCart(request,modelAndView);
        if(request.getParameter("direction").equals("0"))
            modelAndView.setViewName("single_pro"+request.getContextPath());
        else
            modelAndView.setViewName("look_wish_list");
        return modelAndView;
    }
    */

    @RequestMapping(value = "add_shopping_cart")
    public Map<String, String> add_shopping_cart(HttpServletRequest request) throws  Exception {
        ModelAndView modelAndView = new ModelAndView();
        productsService.queryaddShoppingCart(request,modelAndView);
        return new HashMap<String, String>();
    }


    @RequestMapping(value = "select_stores_single")
    public ModelAndView select_stores_single(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        storesService.queryselectStoresByCity(request,modelAndView);
        productsService.querygetSingleProduct(request, modelAndView);

        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);

        //添加购物车
        HttpSession session = request.getSession(true);
        displayShoppingCart(request, modelAndView);

        modelAndView.setViewName("single_product.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "update_store")
    public ModelAndView update_store(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("province",request.getParameter("province"));
        session.setAttribute("city",request.getParameter("city"));
        session.setAttribute("district", request.getParameter("district"));
        storesService.queryselectStoresByCity(request,modelAndView);
        productsService.querygetSingleProduct(request, modelAndView);

        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);

        //添加购物车
        displayShoppingCart(request, modelAndView);

        modelAndView.setViewName("single_product.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "return_products_list")
    public ModelAndView return_products_list(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        String searchKey = (String)session.getAttribute("searchkey");
            modelAndView.setViewName("search_products?searchKey="+searchKey);
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
