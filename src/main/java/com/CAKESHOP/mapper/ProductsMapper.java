package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.DisplayProducts;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.dao.SingleProduct;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface ProductsMapper {
    //默认方式显示
    //模糊搜索商品
    List<DisplayProducts> selectProductsSearch(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //模糊搜索商品，类别限制
    List<DisplayProducts> selectProductsSearchCd(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //价格升序显示
    //模糊搜索商品
    List<DisplayProducts> selectProductsSearchAP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //模糊搜索商品，类别限制
    List<DisplayProducts> selectProductsSearchCdAP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //价格降序显示
    //模糊搜索商品
    List<DisplayProducts> selectProductsSearchDP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //模糊搜索商品，类别限制
    List<DisplayProducts> selectProductsSearchCdDP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //销量升序显示
    //模糊搜索商品
    List<DisplayProducts> selectProductsSearchAS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //模糊搜索商品，类别限制
    List<DisplayProducts> selectProductsSearchCdAS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //销量降序显示
    //模糊搜索商品
    List<DisplayProducts> selectProductsSearchDS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //模糊搜索商品，类别限制
    List<DisplayProducts> selectProductsSearchCdDS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //模糊搜索商品总数
    int getSelectProductsCount(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //模糊搜索商品总数,类别限制
    int getSelectProductsCountCd(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId, @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);
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

    //查找单个商品用于门店显示
    SingleProduct getSingleProduct(@Param(value = "storeId") String storeId, @Param(value = "productId") String productId);

    //查找某门店单一类别下的商品排名
    List<DisplayProducts> selectHotProductsByCategory(@Param(value="storeId") String storeId, @Param(value = "category") String category, @Param(value = "userPhone")String userPhone);

    //返回商品数量
    int countThirdCategory();

    //返回所有三级类别
    List<Map<String,String>> selectThirdCategory();

    //返回某商品的三级类别
    String getProductThirdCategory( @Param(value ="productId")int productId);

    //返回商品ID对应的DisplayProducts
    DisplayProducts selectDisplayProductsById( @Param(value="productId")int productId, @Param(value="storeId")int storeId);

}
