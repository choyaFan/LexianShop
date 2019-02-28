package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.ProductsByStore;
import dao.ProductsByStoreMapper;

@Service
public class ProductsByStoreService {

    @Resource
    private ProductsByStoreMapper productsByStoreMapper;

    public int insert(ProductsByStore pojo){
        return productsByStoreMapper.insert(pojo);
    }

    public int insertList(List< ProductsByStore> pojos){
        return productsByStoreMapper.insertList(pojos);
    }

    public List<ProductsByStore> select(ProductsByStore pojo){
        return productsByStoreMapper.select(pojo);
    }

    public int update(ProductsByStore pojo){
        return productsByStoreMapper.update(pojo);
    }

}
