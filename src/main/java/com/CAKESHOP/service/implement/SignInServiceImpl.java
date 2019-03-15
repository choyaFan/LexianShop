package com.CAKESHOP.service.implement;


import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.mapper.ShoppingCartMapper;
import com.CAKESHOP.mapper.SignInMapper;
import com.CAKESHOP.service.SignInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class SignInServiceImpl implements SignInService {
    @Autowired
    private SignInMapper signinMapper;
    @Resource
    ShoppingCartMapper shoppingCartMapper;

    @Override
    public String login(PersonalInformation user){
        System.out.println(signinMapper.selectUser(user.getUser_phone()));
        return signinMapper.selectUser(user.getUser_phone()).getUser_password();
    }
    @Override
    public String getUserName(String userPhone){
        return signinMapper.selectUser(userPhone).getUser_name();
    }

}
