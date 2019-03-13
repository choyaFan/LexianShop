package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Products;
import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.dao.SpecialProducts;
import com.CAKESHOP.dao.SpecialSectors;
import com.CAKESHOP.service.ProductsByStoreService;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.SectorService;
import com.CAKESHOP.service.SpecialProductService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private ProductsByStoreService productsByStoreService = null;
    @Autowired
    private ProductsService productsService = null;
    @Autowired
    private SectorService sectorService = null;
    @Autowired
    private SpecialProductService specialProductService = null;

    @RequestMapping("/getStoreProducts")
    public ModelAndView getIndexProduct(@RequestParam("storeId") int storeId){
        List<ProductsByStore> productsByStoreList = productsByStoreService.selectByStoreId(storeId);
        List<Products> productsList = new ArrayList<>();
        for(ProductsByStore productsByStore : productsByStoreList){
            productsList.add(productsService.searchById(productsByStore.getProductId()));
        }
        ModelAndView mv = getSector();
        mv.addObject("productsByStoreList",productsByStoreList);
        mv.addObject("productsList", productsList);
        mv.setViewName("index.jsp");
        return mv;
    }

    @RequestMapping("/getSector")
    public ModelAndView getSector(){
        System.out.println("inter into the controller");
        ModelAndView mv = new ModelAndView();
        List<SpecialSectors> sectorsList = sectorService.getAllSpecialSector();
        List<Products> products = new ArrayList<>();
        List<SpecialProducts> specialProducts;
        List<ProductsByStore> productsByStores = new ArrayList<>();
        int i; List<Integer> num = new ArrayList<>();
        for(SpecialSectors specialSectors : sectorsList){
            i = 0;
            specialProducts = specialProductService.searchByName(specialSectors.getSectorName());
            for(SpecialProducts specialProduct : specialProducts){
                i++;
                products.add(productsService.searchById(specialProduct.getProductId()));
                productsByStores.add(productsByStoreService.selectByProductAndStore(specialProduct.getProductId(), 1));
            }
            num.add(i);
        }
        mv.addObject("num", num);
        mv.addObject("specialProductsList", products);
        mv.addObject("sectorsList",sectorsList);
        mv.addObject("productsByStores", productsByStores);
        mv.setViewName("index.jsp");
        return mv;
    }
}
