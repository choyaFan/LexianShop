package com.CAKESHOP.controller;

import com.CAKESHOP.service.ProductsService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RestController
public class DisplaySingleProduct {
    @Resource
    ProductsService productsService;

    @RequestMapping(value = "single_pro")
    public ModelAndView single_pro(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        productsService.querygetSingleProduct(request, modelAndView);
        modelAndView.setViewName("single_product.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "add_shopping_cart")
    public ModelAndView add_shopping_cart(HttpServletRequest request) throws  Exception {
        ModelAndView modelAndView = new ModelAndView();
        productsService.queryaddShoppingCart(request,modelAndView);
        modelAndView.setViewName("single_pro"+request.getContextPath());
        return modelAndView;
    }
}
