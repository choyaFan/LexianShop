package com.CAKESHOP.service;

import com.CAKESHOP.dao.ProductsByStore;

import java.util.List;

public interface ProductsByStoreService {
    List<ProductsByStore> selectByStoreId(int storeId);
    List<ProductsByStore> selectByProductId(int productId);
    ProductsByStore selectByProductAndStore(int productId, int storeId);
    void updateInventory(int storeId, int productId, int inventory);
}
