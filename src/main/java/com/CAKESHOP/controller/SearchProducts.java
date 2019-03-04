package com.CAKESHOP.controller;

import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.service.ProductsService;
import com.CAKESHOP.service.SignUpService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.lang.String;
import java.util.List;


@RestController
public class SearchProducts {
    @Autowired
    ProductsService productsService;

    @RequestMapping(value="shop_grid.action")
    public ModelAndView shop_grid() {//默认界面，按照商品名组织商品
        ModelAndView modelAndView = new ModelAndView();
        List<Products> products = productsService.queryallProducts();
        System.out.println("查询结果为："+products);
        /*
        for (Products product : products) {
            product.setImgPath("images/" + Integer.toString(product.getID()) + ".jpg");
        }
        */
        //向要跳转的页面中以"products"的名字传入参数"products"，以下依此类推
        modelAndView.addObject("products", products);
        //指定要跳转的视图为"products"视图，框架会自动匹配后缀名，以下依此类推
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

}
