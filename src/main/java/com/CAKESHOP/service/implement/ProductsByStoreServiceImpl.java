package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.mapper.ProductsByStoreMapper;
import com.CAKESHOP.service.ProductsByStoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductsByStoreServiceImpl implements ProductsByStoreService {
    @Autowired
    private ProductsByStoreMapper productsByStoreMapper;
    @Override
    public List<ProductsByStore> selectByStoreId(int storeId){
        return productsByStoreMapper.searchByStoreId(storeId);
    }
}
