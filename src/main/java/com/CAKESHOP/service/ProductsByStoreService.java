package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.ProductsByStore;
import dao.ProductsByStoreDao;

@Service
public class ProductsByStoreService {

    @Resource
    private ProductsByStoreDao productsByStoreDao;

    public int insert(ProductsByStore pojo){
        return productsByStoreDao.insert(pojo);
    }

    public int insertList(List< ProductsByStore> pojos){
        return productsByStoreDao.insertList(pojos);
    }

    public List<ProductsByStore> select(ProductsByStore pojo){
        return productsByStoreDao.select(pojo);
    }

    public int update(ProductsByStore pojo){
        return productsByStoreDao.update(pojo);
    }

}
