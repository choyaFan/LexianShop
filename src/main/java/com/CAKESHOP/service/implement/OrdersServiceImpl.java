package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.mapper.OrdersMapper;
import com.CAKESHOP.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OrdersServiceImpl implements OrdersService{
    @Resource
    private OrdersMapper ordersMapper;
    @Override
    public void insertOrders(Orders orders){
        ordersMapper.insert(orders);
    }
}
