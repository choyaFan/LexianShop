package com.CAKESHOP.service;

import com.CAKESHOP.dao.Products;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface ProductsService {
    List<Products> queryselectProducts(String searchKey);
    List<Products> queryallProducts();
    void queryshowArticleByPage(HttpServletRequest request, ModelAndView model) throws Exception;

}
