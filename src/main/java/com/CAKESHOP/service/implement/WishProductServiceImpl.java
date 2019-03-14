package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.WishProduct;
import com.CAKESHOP.mapper.FavouriteMapper;
import com.CAKESHOP.mapper.WishProductMapper;
import com.CAKESHOP.service.WishProductService;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.List;

@Service
public class WishProductServiceImpl implements WishProductService {
    @Resource
    WishProductMapper wishProductMapper;
    @Resource
    FavouriteMapper favouriteMapper;

    @Override
    public void querygetWishList(HttpServletRequest request, ModelAndView modelAndView) throws Exception {
        HttpSession session = request.getSession(true);
        String userPhone = "13700000000";
        List<WishProduct> wishProductList = wishProductMapper.getWishList(userPhone);
        modelAndView.addObject("wishProductList", wishProductList);
    }

    @Override
    public void querydeleteWish(HttpServletRequest request) throws Exception {
        String userPhone="13700000000";
        String storeId = request.getParameter("storeId");
        String productId = request.getParameter("productId");
        wishProductMapper.deleteWish(userPhone, storeId, productId);
    }

    @Override
    public void querydeleteAllWish(HttpServletRequest request) throws Exception {
        String userPhone="13700000000";
        wishProductMapper.deleteAllWish(userPhone);
    }


    @Override
    public int queryaddWish(HttpServletRequest request, ModelAndView modelAndView) throws Exception {
        HttpSession session = request.getSession(true);
        String userPhone = "13700000000";
        String productId = request.getParameter("productId");
        String storeId = request.getParameter("storeId");

        System.setProperty("user.timezone","GMT+8");

        Timestamp d = new Timestamp(System.currentTimeMillis());
        if(favouriteMapper.findWish(userPhone,productId,storeId)==0) {
            favouriteMapper.insertWish(userPhone, productId, storeId, d);
            return 1;
        }
        else
            return 0;
    }
}
