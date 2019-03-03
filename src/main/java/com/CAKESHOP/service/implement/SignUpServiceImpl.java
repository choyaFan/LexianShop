package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.mapper.SignUpMapper;
import com.CAKESHOP.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SignUpServiceImpl implements SignUpService {
    @Autowired
    private SignUpMapper signupMapper;
    @Override
    public void addUser(PersonalInformation user){ signupMapper.insertUser(user.getUser_name(),user.getPassword()); }
    @Override
    public List<PersonalInformation> queryAllUsers(){ return signupMapper.selectAllUsers(); }
}
