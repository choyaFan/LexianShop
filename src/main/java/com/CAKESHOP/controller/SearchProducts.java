package com.CAKESHOP.controller;

import com.CAKESHOP.dao.BranchStore;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.StoresService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.jws.WebParam;
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

    @RequestMapping(value="shop_grid.action")
    public ModelAndView shop_grid(HttpServletRequest request) throws Exception {//默认界面，按照商品名组织商品
        ModelAndView modelAndView = new ModelAndView();
        //不分页显示
        //List<Products> products = productsService.queryallProducts();
        //分页显示
        productsService.queryshowProductsByPage(request, modelAndView);
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

    @RequestMapping(value="search_products")
    public ModelAndView search_products(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
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



    @RequestMapping(value="select_stores")
    public ModelAndView select_stores(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        BranchStore branchStore = new BranchStore();

        branchStore.setProvince(request.getParameter("province"));
        branchStore.setCity(request.getParameter("city"));
        branchStore.setDistrict(request.getParameter("district"));

        HttpSession session = request.getSession(true);
        session.setAttribute("province",request.getParameter("province"));
        session.setAttribute("city",request.getParameter("city"));
        session.setAttribute("district",request.getParameter("district"));

        List<BranchStore> branchStoreList = storesService.queryselectStoresByCity(branchStore);

        System.out.println(session.getAttribute("city"));
        System.out.println(branchStore.getCity());
        productsService.queryshowProductsByPage(request, modelAndView);
        modelAndView.addObject("branchStoreList",branchStoreList);
        modelAndView.addObject("province",session.getAttribute("province"));
        modelAndView.addObject("city",session.getAttribute("city"));
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

    @RequestMapping(value="stores_changed")
    public ModelAndView stores_changed(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        BranchStore branchStore = new BranchStore();
        HttpSession session = request.getSession(true);

        branchStore.setProvince((String)session.getAttribute("province"));
        branchStore.setCity((String)session.getAttribute("city"));
        branchStore.setDistrict((String)session.getAttribute("district"));

        branchStore.setStoreName(request.getParameter("store"));
        List<BranchStore> branchStoreList = storesService.queryselectStoresByCity(branchStore);

        session.setAttribute("storeName",request.getParameter("store"));
        session.setAttribute("storeId",Integer.toString(branchStoreList.get(0).getId()));

        modelAndView.addObject("province",session.getAttribute("province"));
        modelAndView.addObject("city",session.getAttribute("city"));
        modelAndView.addObject("district",session.getAttribute("district"));
        modelAndView.addObject("store",session.getAttribute("storeName"));

        System.out.println(session.getAttribute("district"));
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "add_condition")
    public ModelAndView add_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        List<String> cdclass;
        if(session.getAttribute("cdclass")==null){
            cdclass = new ArrayList<String>();
        }
        else {
            cdclass = (List<String>)session.getAttribute("cdclass");
        }
        String tmp = (String)request.getAttribute("condition");
        cdclass.add(request.getParameter("condition"));
        session.setAttribute("cdclass",cdclass);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }



}
