package com.CAKESHOP.service.implement;


import com.CAKESHOP.dao.Products;
import com.CAKESHOP.mapper.ProductsMapper;
import com.CAKESHOP.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductsServiceImpl implements ProductsService {
    @Autowired
    ProductsMapper productsMapper;

    @Override
    public List<Products> queryselectProducts(String searchKey) {
        return productsMapper.selectProductsSearch(searchKey);
    }

    @Override
    public List<Products> queryallProducts() {
        return productsMapper.selectAllProducts();
    }

    @Override
    public Products searchById(int id){
        return productsMapper.selectById(id);
    }
}
