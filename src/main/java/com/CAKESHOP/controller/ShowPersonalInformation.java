package com.CAKESHOP.controller;


import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.service.ShowPersonalInformationService;
import com.CAKESHOP.service.SignInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ShowPersonalInformation {
    @Autowired
    public ShowPersonalInformationService showPersonalInformationService;
    public PersonalInformation user = new PersonalInformation();
    @Resource
    public SignInService signinService;
    public User users = new User();


    @RequestMapping ("ShowPersonalInformation.action")
    public ModelAndView personalData(){
        GlobalStatus globalStatus = new GlobalStatus();
        System.out.println("登陆状态查询"+globalStatus.get());
        System.out.println("登陆手机号"+users.user_phone_transfer);

        List<PersonalInformation> personalData = showPersonalInformationService.queryUserInformation(users.user_phone_transfer);
        System.out.println("数据库查询结果"+personalData);
        ModelAndView modelAndView =new ModelAndView();
        if(globalStatus.get()==1){
            modelAndView.addObject("personalData",personalData);
            modelAndView.setViewName("ShowPersonalInformation.jsp");
        }
        else{
            modelAndView.setViewName("sign_in.jsp");
    }
        return modelAndView;
    }

    @RequestMapping ("revisePersonalInformation.action")
    public ModelAndView revisePersonalInformation(HttpServletRequest request){
        ModelAndView modelAndView =new ModelAndView();

        String user_name = request.getParameter("user_name");
        String user_password = request.getParameter("user_password");
        String gender_temporary = request.getParameter("gender");
        char gender = (gender_temporary.toCharArray())[0];
        String email=request.getParameter("email");

        user.setUser_phone(users.user_phone_transfer);//获得用户电话号
        user.setUser_name(user_name);
        user.setUser_password(user_password);
        user.setGender(gender);
        user.setEmail(email);

        showPersonalInformationService.reviseUserInformation(user);
        modelAndView.setViewName("index.jsp");
        return modelAndView;
    }

    @RequestMapping ("revisePersonalInformationConfirm.action")
    public ModelAndView revisePersonalInformationConfirm(HttpServletRequest request){
        ModelAndView modelAndView =new ModelAndView();
        String user_password_input = request.getParameter("user_password");//获取界面输入密码
        user.setUser_phone(users.user_phone_transfer);
        System.out.println("密码确认输入"+user_password_input);
        System.out.println("输入手机号确认"+user.getUser_phone());
        String user_password = signinService.login(user);//利用登陆部分的代码来再次进行密码提取
        System.out.println("密码提取结果"+user_password);
        if(user_password_input.equals(user_password)) {
            modelAndView.setViewName("revisePersonalInformation.jsp");
        }else{
            modelAndView.setViewName("revisePersonalInformationConfirm.jsp");
        }
        return modelAndView;
    }

}
