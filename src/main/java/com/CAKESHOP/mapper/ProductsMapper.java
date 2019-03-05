package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.Products;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsMapper {
    //Ä£ºýËÑË÷ÉÌÆ·
    List<Products> selectProductsSearch(@Param("searchKey") String searchKey);
    List<Products> selectAllProducts();
    Products selectById(@Param("id") int id);
}
