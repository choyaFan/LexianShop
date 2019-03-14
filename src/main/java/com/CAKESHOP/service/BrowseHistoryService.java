package com.CAKESHOP.service;

import com.CAKESHOP.dao.Browse;

import java.util.List;

public interface BrowseHistoryService {
    String selectPhone(String user_name);
    List<Browse> selectBrowseHistory(Browse user);
    String queryProductName(int product_id);
    String queryStoreName(int store_id);
}
