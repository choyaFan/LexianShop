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
    @Override
    public List<ProductsByStore> selectByProductId(int productId){
        return productsByStoreMapper.searchByProductId(productId);
    }
    @Override
    public ProductsByStore selectByProductAndStore(int productId, int storeId){
        return productsByStoreMapper.searchByProductAndStore(productId, storeId);
    }
    @Override
    public void updateInventory(int storeId, int productId, int inventory){
        productsByStoreMapper.updateInventory(storeId, productId, inventory);
    }
}
