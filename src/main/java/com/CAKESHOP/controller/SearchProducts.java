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
    public ModelAndView shop_grid() {//Ĭ�Ͻ��棬������Ʒ����֯��Ʒ
        ModelAndView modelAndView = new ModelAndView();
        List<Products> products = productsService.queryallProducts();
        System.out.println("��ѯ���Ϊ��"+products);
        /*
        for (Products product : products) {
            product.setImgPath("images/" + Integer.toString(product.getID()) + ".jpg");
        }
        */
        //��Ҫ��ת��ҳ������"products"�����ִ������"products"��������������
        modelAndView.addObject("products", products);
        //ָ��Ҫ��ת����ͼΪ"products"��ͼ����ܻ��Զ�ƥ���׺����������������
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

}
