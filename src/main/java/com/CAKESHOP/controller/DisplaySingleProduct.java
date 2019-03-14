package com.CAKESHOP.controller;

import com.CAKESHOP.dao.BranchStore;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.StoresService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class DisplaySingleProduct {
    @Resource
    ProductsService productsService;
    @Resource
    StoresService storesService;

    @RequestMapping(value = "single_pro")
    public ModelAndView single_pro(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        productsService.querygetSingleProduct(request, modelAndView);
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
}
