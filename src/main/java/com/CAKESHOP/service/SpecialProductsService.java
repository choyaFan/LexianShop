package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.SpecialProducts;
import dao.SpecialProductsDao;

@Service
public class SpecialProductsService {

    @Resource
    private SpecialProductsDao specialProductsDao;

    public int insert(SpecialProducts pojo){
        return specialProductsDao.insert(pojo);
    }

    public int insertList(List< SpecialProducts> pojos){
        return specialProductsDao.insertList(pojos);
    }

    public List<SpecialProducts> select(SpecialProducts pojo){
        return specialProductsDao.select(pojo);
    }

    public int update(SpecialProducts pojo){
        return specialProductsDao.update(pojo);
    }

}
