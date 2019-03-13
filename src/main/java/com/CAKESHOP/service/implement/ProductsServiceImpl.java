package com.CAKESHOP.service.implement;


import com.CAKESHOP.dao.*;
import com.CAKESHOP.mapper.ShoppingCartMapper;
import com.CAKESHOP.mapper.ProductsMapper;
import com.CAKESHOP.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductsServiceImpl implements ProductsService {
    @Resource
    ProductsMapper productsMapper;
    @Resource
    ShoppingCartMapper shoppingCartMapper;

    @Override
    public void queryselectProducts(HttpServletRequest request, ModelAndView modelAndView) {
        String pageNow = request.getParameter("pageNow");
        Page page = null;
        List<DisplayProducts> displayProductsList = new ArrayList<DisplayProducts>();
        HttpSession session = request.getSession(true);
        String storeId = (String) session.getAttribute("storeId");
        int sortWay=0;
        if(session.getAttribute("sortWay")!=null)
            sortWay = (int) session.getAttribute("sortWay");
        int limitWay=15;
        if(session.getAttribute("limitWay")!=null)
            limitWay = (int) session.getAttribute("limitWay");


        //获取最低价格
        double minMoney = productsMapper.getMinMoney(request.getParameter("searchKey"), storeId);
        double maxMoney = productsMapper.getMaxMoney(request.getParameter("searchKey"), storeId);

        List<String> cdclass = (List<String>)session.getAttribute("cdclass");
        List<String> cdmoney = (List<String>)session.getAttribute("cdmoney");
        if(cdmoney==null || cdmoney.isEmpty()){
            cdmoney = new ArrayList<String>();
            cdmoney.add(String.valueOf((int)Math.floor(minMoney)));
            cdmoney.add(String.valueOf((int)Math.ceil(maxMoney)));
        }

        int totalCount;
        if(cdclass==null || cdclass.isEmpty())
            totalCount = productsMapper.getSelectProductsCount(request.getParameter("searchKey"), storeId, cdmoney);
        else
            totalCount = productsMapper.getSelectProductsCountCd(request.getParameter("searchKey"), storeId, cdclass, cdmoney);
        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow), limitWay);

        } else {
            page = new Page(totalCount, 1, limitWay);
        }
        if(cdclass==null || cdclass.isEmpty())
            switch(sortWay){
                case 1: displayProductsList = productsMapper.selectProductsSearchDS(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdmoney);break;
                case 2: displayProductsList = productsMapper.selectProductsSearchAS(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdmoney);break;
                case 3: displayProductsList = productsMapper.selectProductsSearchDP(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdmoney);break;
                case 4: displayProductsList = productsMapper.selectProductsSearchAP(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdmoney);break;
                default:displayProductsList = productsMapper.selectProductsSearch(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdmoney);
            }
        else
            switch(sortWay){
                case 1: displayProductsList = productsMapper.selectProductsSearchCdDS(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdclass, cdmoney);break;
                case 2: displayProductsList = productsMapper.selectProductsSearchCdAS(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdclass, cdmoney);break;
                case 3: displayProductsList = productsMapper.selectProductsSearchCdDP(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdclass, cdmoney);break;
                case 4: displayProductsList = productsMapper.selectProductsSearchCdAP(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdclass, cdmoney);break;
                default:displayProductsList = productsMapper.selectProductsSearchCd(page.getStartPos(), page.getPageSize(), request.getParameter("searchKey"), storeId, cdclass, cdmoney);
            }
        System.out.println("pageNow: "+page.getPageNow()+"\ntotal page count: "+page.getTotalPageCount());
        List<String> categoryList = productsMapper.getProductsCategory(request.getParameter("searchKey"), storeId);



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
    public Products searchById(int id){
        return productsMapper.selectById(id);
    }

    @Override
    public void queryshowProductsByPage(HttpServletRequest request, ModelAndView modelAndView) throws  Exception{
        String pageNow = request.getParameter("pageNow");
        Page page = null;
        List<Products> productsList = new ArrayList<Products>();

        HttpSession session = request.getSession(true);

        int limitWay=15;
        if(session.getAttribute("limitWay")!=null)
            limitWay = (int) session.getAttribute("limitWay");


        int totalCount = productsMapper.getProductsCount();
        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow), limitWay);
            productsList = productsMapper.selectProductsByPage(page.getStartPos(), page.getPageSize());
        } else {
            page = new Page(totalCount, 1, limitWay);
            productsList = productsMapper.selectProductsByPage(page.getStartPos(), page.getPageSize());
        }
        System.out.println("pageNow: "+page.getPageNow()+"\ntotal page count: "+page.getTotalPageCount());

        modelAndView.addObject("productsList", productsList);
        modelAndView.addObject("page", page);
    }

    @Override
    public void querygetSingleProduct(HttpServletRequest request, ModelAndView modelAndView) throws Exception {
        HttpSession session = request.getSession(true);
        String storeId = (String) session.getAttribute("storeId");
        String productId = request.getParameter("productId");
        SingleProduct singleProduct = productsMapper.getSingleProduct(storeId, productId);
        List<DisplayProducts> displayProductsList = productsMapper.selectHotProductsByCategory(storeId, singleProduct.getThirdCategory());

        modelAndView.addObject("singleProduct", singleProduct);
        modelAndView.addObject("displayProductsList",displayProductsList);
    }

    @Override
    public void queryaddShoppingCart(HttpServletRequest request, ModelAndView modelAndView) throws Exception {
        HttpSession session = request.getSession(true);

        String storeId = request.getParameter("storeId");
        String productId = request.getParameter("productId");
        int amount = Integer.parseInt(request.getParameter("amount"));
        SingleProduct singleProduct = productsMapper.getSingleProduct(storeId,productId);
        Timestamp d = new Timestamp(System.currentTimeMillis());


        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setUserPhone("13700000000");
        shoppingCart.setProductId(Integer.parseInt(productId));
        shoppingCart.setStoreId(Integer.parseInt(storeId));
        List<ShoppingCart> shoppingCartListPerProduct = shoppingCartMapper.select(shoppingCart);

        shoppingCart.setCreateTime(d);
        if(shoppingCartListPerProduct!=null && !shoppingCartListPerProduct.isEmpty()){
            shoppingCart.setAmount(shoppingCartListPerProduct.get(0).getAmount()+amount);
            shoppingCart.setId(shoppingCartListPerProduct.get(0).getId());
            shoppingCartMapper.update(shoppingCart);
        }
        else{
            shoppingCart.setAmount(amount);
            shoppingCartMapper.insert(shoppingCart);
        }
    }



}
