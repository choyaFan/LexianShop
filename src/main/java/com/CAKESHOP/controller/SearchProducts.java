package com.CAKESHOP.controller;

import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.StoresService;
import com.CAKESHOP.service.WishProductService;
import com.sun.xml.internal.ws.resources.HttpserverMessages;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.jws.WebParam;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.String;
import java.util.ArrayList;
import java.util.List;


@RestController
public class SearchProducts {
    @Resource
    ProductsService productsService;

    @Resource
    StoresService storesService;

    @Resource
    WishProductService wishProductService;

    @RequestMapping(value = "shop_grid.action")
    public ModelAndView shop_grid(HttpServletRequest request) throws Exception {//默认界面，按照商品名组织商品
        ModelAndView modelAndView = new ModelAndView();
        //不分页显示
        //List<Products> products = productsService.queryallProducts();
        //分页显示
        productsService.queryshowProductsByPage(request, modelAndView);
        modelAndView.addObject("minMoney",0);
        modelAndView.addObject("maxMoney",100);
        modelAndView.addObject("storeId",100);

        List<String> cdmoney = new ArrayList<String>();
        String minMoney = "0";
        String maxMoney = "100";
        cdmoney.add(minMoney);
        cdmoney.add(maxMoney);
        HttpSession session = request.getSession(true);
        session.setAttribute("cdmoney", cdmoney);
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "search_products")
    public ModelAndView search_products(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("searchkey",request.getParameter("searchKey"));
        productsService.queryselectProducts(request, modelAndView);
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "show_products_by_condition")
    public ModelAndView show_products_by_condition(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        productsService.queryselectProducts(request, modelAndView);
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }


    @RequestMapping(value = "select_stores")
    public ModelAndView select_stores(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        storesService.queryselectStoresByCity(request,modelAndView);
        productsService.queryshowProductsByPage(request, modelAndView);
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "stores_changed")
    public ModelAndView stores_changed(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        storesService.queryselectStoresByCity(request,modelAndView);
        modelAndView.setViewName("getSector.html");
        return modelAndView;
    }

    @RequestMapping(value = "add_condition")
    public ModelAndView add_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        List<String> cdclass;
        if (session.getAttribute("cdclass") == null) {
            cdclass = new ArrayList<String>();
        } else {
            cdclass = (List<String>) session.getAttribute("cdclass");
        }
        String tmp = (String) request.getAttribute("condition");
        cdclass.add(request.getParameter("condition"));
        session.setAttribute("cdclass", cdclass);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "refresh")
    public ModelAndView refresh(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.invalidate();
        modelAndView.setViewName("shop_grid.action");
        return modelAndView;
    }

    @RequestMapping(value = "remove_condition")
    public ModelAndView remove_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        List<String> cdclass = (List<String>) session.getAttribute("cdclass");
        remove(cdclass,request.getParameter("condition"));
        session.setAttribute("cdclass",cdclass);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "empty_condition")
    public ModelAndView empty_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("cdclass",null);
        session.setAttribute("cdmoney", null);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "money_condition")
    public ModelAndView money_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        List<String> cdmoney = (List<String>) session.getAttribute("cdmoney");
        if(session.getAttribute("cdmoney")==null)
            cdmoney = new ArrayList<String>();
        String minMoney = request.getParameter("minMoney");
        if(minMoney==null)
            minMoney = cdmoney.get(0);
        String maxMoney = request.getParameter("maxMoney");
        if(maxMoney==null)
            maxMoney = cdmoney.get(1);
        cdmoney.add(minMoney);
        cdmoney.add(maxMoney);
        session.setAttribute("cdmoney", cdmoney);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "remove_money_condition")
    public ModelAndView remove_money_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("cdmoney",null);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "sort_products")
    public ModelAndView sort_products(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("sortWay",Integer.parseInt(request.getParameter("sortWay")));
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "limit_products")
    public ModelAndView limit_products(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("limitWay",Integer.parseInt(request.getParameter("limitWay")));
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "add_to_wish")
    public ModelAndView add_to_wish(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.queryaddWish(request,modelAndView);
        modelAndView.setViewName("");
        return modelAndView;
    }

    public static void remove(List<String> list, String target) {
        int size = list.size();
        for (int i = size - 1; i >= 0; i--) {
            String item = list.get(i);
            if (target.equals(item))
                list.remove(item);
        }
    }



}
