package com.CAKESHOP.controller;

import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import java.lang.String;
import java.util.List;


@Controller
public class SignUp {
    @Autowired
    private SignUpService signupService;
    public PersonalInformation user = new PersonalInformation();

    public void setService(SignUpService signupService){
        this.signupService=signupService;
    }

    @RequestMapping(value = "sign_up.action")
    public ModelAndView doGet(HttpServletRequest request) {
        System.out.println("注册信息啦啦啦啦啦啦啦啦啦");
        String user_phone = request.getParameter("user_phone");//获取填写的电话号，userid是文本框的名字，<input type="text" name="userid">
       // int user_phone=Integer.parseInt(user_phone_temporary);
        String user_name = request.getParameter("user_name");
        String user_password = request.getParameter("user_password");
        String gender_temporary = request.getParameter("gender");
        char gender= (gender_temporary.toCharArray())[0];
        String email=request.getParameter("email");

        user.setUser_phone(user_phone);
        user.setUser_name(user_name);
        user.setUser_password(user_password);
        user.setGender(gender);
        user.setEmail(email);

        signupService.addUser(user);
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.setViewName("sign_in.jsp");
        return modelAndView;
    }

        public void test(){
        System.out.println("查询"+signupService.queryAllUsers().toString());
    }
}
