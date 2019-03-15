package com.CAKESHOP.service;

import java.util.List;
import java.util.Map;

public interface UsersRSService {
    List<Map<String, String>>  queryselectAllUsersPhone();
    int querygetUsersNum();
}
