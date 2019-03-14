package com.CAKESHOP.service.implement;

import com.CAKESHOP.mapper.UsersRSMapper;
import com.CAKESHOP.service.UsersRSService;

import javax.annotation.Resource;
import java.util.List;

public class UsersRSServiceImpl implements UsersRSService {
    @Resource
    UsersRSMapper usersRSMapper;

    @Override
    public List<String> queryselectAllUsersPhone() {
        return usersRSMapper.getAllUsersPhone();
    }

    @Override
    public int querygetUsersNum() {
        return usersRSMapper.getUsersNum();
    }
}
