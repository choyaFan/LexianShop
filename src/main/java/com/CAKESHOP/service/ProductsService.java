package com.CAKESHOP.service;

import com.CAKESHOP.dao.DisplayProducts;
import com.CAKESHOP.dao.Products;

import net.sf.json.JSONObject;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface ProductsService {
    void queryselectProducts(HttpServletRequest request, ModelAndView modelAndView);
    List<Products> queryallProducts();
    void queryshowProductsByPage(HttpServletRequest request, ModelAndView model) throws Exception;

    Products searchById(int id);

    void querygetSingleProduct(HttpServletRequest request, ModelAndView modelAndView) throws Exception;
    void queryaddShoppingCart(HttpServletRequest request, ModelAndView modelAndView) throws Exception;

    int querycountThirdCategory();

    List<Map<String,String>> queryselectThirdCategory();

    String querygetProductThirdCategory(int productId);

    JSONObject getCategoriesMapperJson();

    DisplayProducts queryselectDisplayProductsById(int productId, int storeId);


}
