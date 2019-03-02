package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.Orders;
import com.CAKESHOP.dao.OrdersDao;

@Service
public class OrdersService {

    @Resource
    private OrdersDao ordersDao;

    public int insert(Orders pojo){
        return ordersDao.insert(pojo);
    }

    public int insertList(List< Orders> pojos){
        return ordersDao.insertList(pojos);
    }

    public List<Orders> select(Orders pojo){
        return ordersDao.select(pojo);
    }

    public int update(Orders pojo){
        return ordersDao.update(pojo);
    }

}
