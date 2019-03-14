package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.WishProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WishProductMapper {
    //获得收藏列表
    List<WishProduct> getWishList(@Param("userPhone")String userPhone);

    //删除收藏列表中某商品
    void deleteWish(@Param("userPhone")String userPhone, @Param("storeId")String storeId, @Param("productId")String productId);

    //删除收藏列表中所有商品
    void deleteAllWish(@Param("userPhone")String userPhone);
}
