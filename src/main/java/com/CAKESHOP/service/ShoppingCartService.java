package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.ShoppingCart;
import dao.ShoppingCartDao;

@Service
public class ShoppingCartService {

    @Resource
    private ShoppingCartDao shoppingCartDao;

    public int insert(ShoppingCart pojo){
        return shoppingCartDao.insert(pojo);
    }

    public int insertList(List< ShoppingCart> pojos){
        return shoppingCartDao.insertList(pojos);
    }

    public List<ShoppingCart> select(ShoppingCart pojo){
        return shoppingCartDao.select(pojo);
    }

    public int update(ShoppingCart pojo){
        return shoppingCartDao.update(pojo);
    }

}
