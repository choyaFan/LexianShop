package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.Browse;
import com.CAKESHOP.mapper.BrowseHistoryMapper;

import com.CAKESHOP.service.BrowseHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BrowseHistoryServiceImpl implements BrowseHistoryService {
    @Autowired
    private BrowseHistoryMapper browseHistoryMapper;
    @Override
    public List<Browse> selectBrowseHistory(Browse user){return browseHistoryMapper.select(user.getUserPhone());}
    @Override
    public String selectPhone(String user_name){return browseHistoryMapper.selectUserPhone(user_name).get(0).getUser_phone();}
    @Override
    public String queryProductName(int product_id){
        return browseHistoryMapper.selectProductName(product_id).get(0).getProductName();
    }
    @Override
    public String queryStoreName(int store_id){
        return browseHistoryMapper.selectStoreName(store_id).get(0).getStoreName();
    }
}
