package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.SpecialProducts;
import dao.SpecialProductsMapper;

@Service
public class SpecialProductsService {

    @Resource
    private SpecialProductsMapper specialProductsMapper;

    public int insert(SpecialProducts pojo){
        return specialProductsMapper.insert(pojo);
    }

    public int insertList(List< SpecialProducts> pojos){
        return specialProductsMapper.insertList(pojos);
    }

    public List<SpecialProducts> select(SpecialProducts pojo){
        return specialProductsMapper.select(pojo);
    }

    public int update(SpecialProducts pojo){
        return specialProductsMapper.update(pojo);
    }

}
