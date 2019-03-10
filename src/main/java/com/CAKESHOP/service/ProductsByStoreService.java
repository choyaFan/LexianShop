package com.CAKESHOP.service;

import com.CAKESHOP.dao.ProductsByStore;

import java.util.List;

public interface ProductsByStoreService {
    List<ProductsByStore> selectByStoreId(int storeId);
}
