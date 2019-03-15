package com.CAKESHOP.mapper;

import java.util.List;
import java.util.Map;

public interface UsersRSMapper {
    List<Map<String, String>>  getAllUsersPhone();
    int  getUsersNum();
}
