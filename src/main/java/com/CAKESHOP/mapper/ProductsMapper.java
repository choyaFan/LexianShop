package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.Products;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsMapper {
    //模糊搜索商品
    List<Products> selectProductsSearch(@Param("searchKey") String searchKey);
    //搜索所有商品
    List<Products> selectAllProducts();
    Products selectById(@Param("id") int id);
    //分页操作
    List<Products> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize) throws Exception;
    //查询商品总数
    int getProductsCount();
}
