package com.CAKESHOP.service.implement;

import com.CAKESHOP.mapper.UsersRSMapper;
import com.CAKESHOP.service.UsersRSService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("usersRSService")
public class UsersRSServiceImpl implements UsersRSService {
    @Resource
    UsersRSMapper usersRSMapper;

    @Override
    public List<Map<String, String>> queryselectAllUsersPhone() {
        return usersRSMapper.getAllUsersPhone();
    }

    @Override
    public int querygetUsersNum() {
        return usersRSMapper.getUsersNum();
    }
}
