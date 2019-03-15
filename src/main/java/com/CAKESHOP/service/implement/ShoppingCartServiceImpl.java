package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.dao.ShoppingCart;
import com.CAKESHOP.mapper.ShoppingCartMapper;
import com.CAKESHOP.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import java.util.List;
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
    @Autowired
    private ShoppingCartMapper shoppingCartMapper;
    @Override
    public String queryPictureUrl(int product_id){
        return shoppingCartMapper.selectPictureUrl(product_id).get(0).getPic1Url();
    }
    @Override
    public String queryProductName(int product_id){
        return shoppingCartMapper.selectProductName(product_id).get(0).getProductName();
    }
    @Override
    public String queryStoreName(int store_id){
        return shoppingCartMapper.selectStoreName(store_id).get(0).getStoreName();
    }
    @Override
    public List<ShoppingCart> queryCartInformation(ShoppingCart shoppingCart){
        return shoppingCartMapper.selectCartInformation(shoppingCart.getUserPhone());
    }
    @Override
    public void deleteCart(ShoppingCart shoppingCart){
        shoppingCartMapper.deleteCartInformation(shoppingCart.getProductId());
    }
    @Override
    public void addCartInformation(ShoppingCart shoppingCart){
        shoppingCartMapper.amountAddCartInformation(shoppingCart.getProductId());
    }
    @Override
    public void subtractCartInformation(ShoppingCart shoppingCart){
        shoppingCartMapper.amountSubtractCartInformation(shoppingCart.getProductId());
    }
    @Override
    public void createOrder(Orders order){
        shoppingCartMapper.insertOrder(order.getOrderId(),order.getUserPhone(),order.getProductId(), order.getStoreId(),
                order.getAmount(),order.getSinglePrice(),order.getTotalPrice(),order.getOrderStatus(),order.getTimeStamp());
    }
}
