package com.CAKESHOP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
@Controller       //注解控制器
@RequestMapping(value="regist_skip")      // 定义controller名称
public class regist_skip {
    @RequestMapping("/skip") //定义方法名
    @ResponseBody                      //下面为方法主体函数
    public ModelAndView skip(HttpServletRequest request){
        ModelAndView retMap = new ModelAndView();  //返回新的ModelAndView
        retMap.setViewName("/regist");
        return retMap;
    }
}
