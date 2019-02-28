package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.Orders;
import dao.OrdersMapper;

@Service
public class OrdersService {

    @Resource
    private OrdersMapper ordersMapper;

    public int insert(Orders pojo){
        return ordersMapper.insert(pojo);
    }

    public int insertList(List< Orders> pojos){
        return ordersMapper.insertList(pojos);
    }

    public List<Orders> select(Orders pojo){
        return ordersMapper.select(pojo);
    }

    public int update(Orders pojo){
        return ordersMapper.update(pojo);
    }

}
