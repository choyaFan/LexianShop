package com.CAKESHOP.service.implement;


import com.CAKESHOP.dao.Page;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.mapper.ProductsMapper;
import com.CAKESHOP.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductsServiceImpl implements ProductsService {
    @Autowired
    ProductsMapper productsMapper;

    @Override
    public List<Products> queryselectProducts(String searchKey) {
        return productsMapper.selectProductsSearch(searchKey);
    }

    @Override
    public List<Products> queryallProducts() {
        return productsMapper.selectAllProducts();
    }

    @Override
    public Products searchById(int id){
        return productsMapper.selectById(id);
    }

    @Override
    public void queryshowArticleByPage(HttpServletRequest request, ModelAndView modelAndView) throws  Exception{
        String pageNow = request.getParameter("pageNow");
        Page page = null;
        List<Products> productsList = new ArrayList<Products>();
        int totalCount = productsMapper.getProductsCount();
        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow));
            productsList = productsMapper.selectProductsByPage(page.getStartPos(), page.getPageSize());
        } else {
            page = new Page(totalCount, 1);
            productsList = productsMapper.selectProductsByPage(page.getStartPos(), page.getPageSize());
        }
        System.out.println("pageNow: "+page.getPageNow()+"\ntotal page count: "+page.getTotalPageCount());

        modelAndView.addObject("productsList", productsList);
        modelAndView.addObject("page", page);
    }
}
