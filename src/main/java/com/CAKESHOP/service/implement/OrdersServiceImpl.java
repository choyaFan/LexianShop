package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.mapper.OrdersMapper;
import com.CAKESHOP.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService{
    @Autowired
    private OrdersMapper ordersMapper;
    @Override
    public void insertOrders(Orders orders){
        ordersMapper.insert(orders);
    }
    @Override
    public List<Orders> selectOrdersList(){
        return ordersMapper.selectAllOrders();
    }
    @Override
    public List<Orders> selectByUserId(String userPhone){
        return ordersMapper.selectByUserId(userPhone);
    }
    @Override
    public List<Orders> selectByOrderId(int orderId){
        return ordersMapper.selectByOrderId(orderId);
    }
    @Override
    public void deleteOrder(int orderId){
        ordersMapper.deleteOrder(orderId);
    }
    @Override
    public void updataOrder(int orderId, int productId) {
        ordersMapper.updateOrderState(orderId, productId);
    }
}
