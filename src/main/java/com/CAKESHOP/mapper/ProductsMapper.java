package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.DisplayProducts;
import com.CAKESHOP.dao.Products;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsMapper {
    //模糊搜索商品
    List<DisplayProducts> selectProductsSearch(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId);
    //模糊搜索商品总数
    int getSelectProductsCount(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    //模糊搜索商品总数,类别限制
    int getSelectProductsCountCd(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId, @Param(value="cdclass") List<String> cdclass);
    //搜索所有商品
    List<Products> selectAllProducts();
    //分页操作
    List<Products> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize) throws Exception;
    //查询商品总数
    int getProductsCount();
    //查询商品所有类别
    List<String> getProductsCategory(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    //查询商品最低价格
    double getMinMoney(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    //查询商品最高价格
    double getMaxMoney(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    Products selectById(@Param("id") int id);
}
