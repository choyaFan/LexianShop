package com.CAKESHOP.controller;


import com.CAKESHOP.service.WishProductService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
public class WishProductController {
    @Resource
    WishProductService wishProductService;

    @RequestMapping(value = "look_wish_list")
    public ModelAndView look_wish_list(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.querygetWishList(request,modelAndView);
        modelAndView.setViewName("wish_list.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "delete_wish")
    public ModelAndView delete_wish(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.querydeleteWish(request);
        modelAndView.setViewName("look_wish_list");
        return modelAndView;
    }

    @RequestMapping(value = "delete_all")
    public ModelAndView delete_all(HttpServletRequest request) throws  Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.querydeleteAllWish(request);
        modelAndView.setViewName("look_wish_list");
        return modelAndView;
    }

    @RequestMapping(value = "add_wish", method = RequestMethod.POST)
    public Map<String, String> add_wish(HttpServletRequest request) throws Exception {
        Map<String, String> map =  new HashMap<String, String>();
        ModelAndView modelAndView = new ModelAndView();
        int state = wishProductService.queryaddWish(request,modelAndView);
        if(state==1)
            map.put("succ","success");
        else
            map.put("succ","fail");
        return map;
    }
}
