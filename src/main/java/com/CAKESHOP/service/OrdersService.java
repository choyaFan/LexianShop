package com.CAKESHOP.service;

import com.CAKESHOP.dao.*;

import java.util.List;

public interface OrdersService {
    void insertOrders(Orders orders);
    List<Orders> selectOrdersList();
    List<Orders> selectByUserId(String userPhone);
    List<Orders> selectByOrderId(int orderId);
    void deleteOrder(int orderId);
}
