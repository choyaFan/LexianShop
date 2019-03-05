package com.CAKESHOP.service;

import com.CAKESHOP.dao.Products;

import java.util.List;

public interface ProductsService {
    List<Products> queryselectProducts(String searchKey);
    List<Products> queryallProducts();
    Products searchById(int id);
}
