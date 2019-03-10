package com.CAKESHOP.service.implement;


import com.CAKESHOP.dao.DisplayProducts;
import com.CAKESHOP.dao.Page;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.mapper.ProductsMapper;
import com.CAKESHOP.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductsServiceImpl implements ProductsService {
    @Resource
    ProductsMapper productsMapper;

    @Override
    public void queryselectProducts(HttpServletRequest request, ModelAndView modelAndView) {
        String pageNow = request.getParameter("pageNow");
        Page page = null;
        List<DisplayProducts> displayProductsList = new ArrayList<DisplayProducts>();
        HttpSession session = request.getSession(true);
        String storeId = (String) session.getAttribute("storeId");
        List<String> cdclass = (List<String>)session.getAttribute("cdclass");

        int totalCount;
        if(cdclass==null)
            totalCount = productsMapper.getSelectProductsCount(request.getParameter("searchKey"), storeId);
        else
            totalCount = productsMapper.getSelectProductsCountCd(request.getParameter("searchKey"), storeId, cdclass);
        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow));
            displayProductsList = productsMapper.selectProductsSearch(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId);
        } else {
            page = new Page(totalCount, 1);
            displayProductsList = productsMapper.selectProductsSearch(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId);
        }
        System.out.println("pageNow: "+page.getPageNow()+"\ntotal page count: "+page.getTotalPageCount());
        List<String> categoryList = productsMapper.getProductsCategory(request.getParameter("searchKey"), storeId);

        //获取最低价格
        double minMoney = productsMapper.getMinMoney(request.getParameter("searchKey"), storeId);
        double maxMoney = productsMapper.getMaxMoney(request.getParameter("searchKey"), storeId);

        modelAndView.addObject("minMoney", minMoney);
        modelAndView.addObject("maxMoney", maxMoney);
        modelAndView.addObject("productsList", displayProductsList);
        modelAndView.addObject("page", page);
        modelAndView.addObject("categoryList",categoryList);
    }

    @Override
    public List<Products> queryallProducts() {
        return productsMapper.selectAllProducts();
    }

    @Override
    public void queryshowProductsByPage(HttpServletRequest request, ModelAndView modelAndView) throws  Exception{
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
