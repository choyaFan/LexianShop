package com.CAKESHOP.mapper;

import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;

public interface FavouriteMapper {
    //插入收藏商品
    void insertWish(@Param("userPhone")String userPhone, @Param("productId")String productId, @Param("storeId")String store_id, @Param("createTime")Timestamp createTime);

    //查找商品是否存在
    int findWish(@Param("userPhone")String userPhone, @Param("productId")String productId, @Param("storeId")String store_id);
}
