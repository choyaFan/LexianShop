package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.BranchStore;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.dao.ShoppingCart;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface ShoppingCartMapper {
    List<Products> selectPictureUrl(@Param("id") int id);
    List<Products> selectProductName(@Param("id") int id);
    List<BranchStore> selectStoreName(@Param("id") int id);
    List<ShoppingCart> selectCartInformation(@Param("userPhone") String userPhone);
    void deleteCartInformation(@Param("productId") int productId);
    void amountAddCartInformation(@Param("productId") int productId);
    void amountSubtractCartInformation(@Param("productId") int productId);
    void insertOrder(@Param("orderId") int orderId,@Param("userPhone") String userPhone, @Param("productId") int productId,
                      @Param("storeId") int storeId,@Param("amount") int amount, @Param("singlePrice") double singlePrice,
                      @Param("totalPrice") double totalPrice,@Param("orderStatus") int orderStatus, @Param("timeStamp") Timestamp timeStamp);
}
