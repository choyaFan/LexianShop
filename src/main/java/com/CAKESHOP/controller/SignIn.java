package com.CAKESHOP.controller;


import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.service.ShoppingCartService;
import com.CAKESHOP.service.SignInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class SignIn {
    @Autowired
    private SignInService signinService;
    public PersonalInformation user = new PersonalInformation();
    public GlobalStatus globalStatus = new GlobalStatus();
    public User userTransfer = new User();
    @Resource
    ShoppingCartService shoppingCartService;


    @RequestMapping(value = "sign_in.action")
    public ModelAndView signIn(HttpServletRequest request) {
        ModelAndView modelAndView =new ModelAndView();

        String user_phone = request.getParameter("user_phone");//获取输入电话号码
        String user_name = signinService.getUserName(user_phone);
        userTransfer.user_phone_transfer=user_phone;//保存在User中，便于在ShowPersonalInformation中获取用户在登陆界面输入的电话号

        String user_password_input = request.getParameter("user_password");//获取界面输入密码
        System.out.println("密码输入"+user_password_input);
        System.out.println("用户名: " + user_name);

        user.setUser_phone(user_phone);
        user.setUser_password(user_password_input);

        String user_password = signinService.login(user);
        System.out.println("真正密码"+user_password);
        if(user_password_input.equals(user_password)) {
            System.out.println("success");
            HttpSession session = request.getSession();
            session.setAttribute("userPhone",user_phone);
            session.setAttribute("userName", user_name);

            globalStatus.log_in();
            modelAndView.setViewName("getSector.html");
        }
        else{
            System.out.println("fail");
            globalStatus.log_out();
            modelAndView.setViewName("sign_in.jsp");
        }

        return modelAndView;
    }


    public ModelAndView exit(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index.jsp");
        globalStatus.log_out();
        return modelAndView;
    }

}
