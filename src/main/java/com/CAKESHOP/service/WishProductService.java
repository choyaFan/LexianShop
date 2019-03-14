package com.CAKESHOP.service;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

public interface WishProductService {
    //得到收藏列表
    void querygetWishList(HttpServletRequest request, ModelAndView modelAndView) throws Exception;

    //删除收藏中的某商品
    void querydeleteWish(HttpServletRequest request) throws Exception;

    //删除收藏全部商品
    void querydeleteAllWish(HttpServletRequest request) throws Exception;

    //增加收藏商品
    int queryaddWish(HttpServletRequest request, ModelAndView modelAndView) throws Exception;
}
