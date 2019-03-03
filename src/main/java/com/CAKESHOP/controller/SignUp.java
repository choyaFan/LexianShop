package com.CAKESHOP.controller;

import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.lang.String;


@Controller
public class SignUp {
    @Autowired
    private SignUpService signupService;

    public void setService(SignUpService signupService){
        this.signupService=signupService;
    }


    @RequestMapping("regist")
    public String regist(PersonalInformation user, Model model)
    {
        System.out.println("用户注册："+user.getUser_name()+user.getPassword());
   //     user.setUser_id(1);
        signupService.addUser(user);
        model.addAttribute("msg", "注册成功");		//注册成功后跳转success.jsp页面
        return "success";
    }

    public void test(){
        System.out.println("查询"+signupService.queryAllUsers().toString());
    }
}
