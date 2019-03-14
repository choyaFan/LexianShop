package com.CAKESHOP.service.implement;


import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.mapper.SignInMapper;
import com.CAKESHOP.service.SignInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignInServiceImpl implements SignInService {
    @Autowired
    private SignInMapper signinMapper;
    @Override
    public String login(PersonalInformation user){
        System.out.println(signinMapper.selectUser(user.getUser_phone()));
        return signinMapper.selectUser(user.getUser_phone()).get(0).getUser_password();
    }
}
