package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.ShoppingCart;
import dao.ShoppingCartMapper;

@Service
public class ShoppingCartService {

    @Resource
    private ShoppingCartMapper shoppingCartMapper;

    public int insert(ShoppingCart pojo){
        return shoppingCartMapper.insert(pojo);
    }

    public int insertList(List< ShoppingCart> pojos){
        return shoppingCartMapper.insertList(pojos);
    }

    public List<ShoppingCart> select(ShoppingCart pojo){
        return shoppingCartMapper.select(pojo);
    }

    public int update(ShoppingCart pojo){
        return shoppingCartMapper.update(pojo);
    }

}
