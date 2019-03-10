package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Products;
import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.service.ProductsByStoreService;
import com.CAKESHOP.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private ProductsByStoreService productsByStoreService = null;
    @Autowired
    private ProductsService productsService = null;

    @RequestMapping("/getStoreProducts")
    public ModelAndView getIndexProduct(@RequestParam("storeId") int storeId){
        List<ProductsByStore> productsByStoreList = productsByStoreService.selectByStoreId(storeId);
        List<Products> productsList = new ArrayList<>();
        for(ProductsByStore productsByStore : productsByStoreList){
            productsList.add(productsService.searchById(productsByStore.getProductId()));
        }
        System.out.println(productsList.get(0).getProductName());
        ModelAndView mv = new ModelAndView();
        if(productsByStoreList.isEmpty()) storeId = -1;
        mv.addObject("storeId", storeId);
        mv.addObject("productsByStoreList",productsByStoreList);
        mv.addObject("productsList", productsList);
        mv.setViewName("index.jsp");
        return mv;
    }
}
