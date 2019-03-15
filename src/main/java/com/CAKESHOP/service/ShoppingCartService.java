package com.CAKESHOP.service;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.dao.ShoppingCart;

import javax.persistence.criteria.Order;
import java.util.List;

public interface ShoppingCartService {
    String queryPictureUrl(int product_id);
    String queryProductName(int product_id);
    String queryStoreName(int store_id);
    List<ShoppingCart> queryCartInformation(ShoppingCart shoppingCart);
    void deleteCart(ShoppingCart shoppingCart);
    void addCartInformation(ShoppingCart shoppingCart);
    void subtractCartInformation(ShoppingCart shoppingCart);
    void createOrder(Orders order);
}
