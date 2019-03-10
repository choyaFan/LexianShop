package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.DisplayProducts;
import com.CAKESHOP.dao.Products;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsMapper {
    //ģ��������Ʒ
    List<DisplayProducts> selectProductsSearch(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId);
    //ģ��������Ʒ����
    int getSelectProductsCount(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    //ģ��������Ʒ����,�������
    int getSelectProductsCountCd(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId, @Param(value="cdclass") List<String> cdclass);
    //����������Ʒ
    List<Products> selectAllProducts();
    //��ҳ����
    List<Products> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize) throws Exception;
    //��ѯ��Ʒ����
    int getProductsCount();
    //��ѯ��Ʒ�������
    List<String> getProductsCategory(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    //��ѯ��Ʒ��ͼ۸�
    double getMinMoney(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    //��ѯ��Ʒ��߼۸�
    double getMaxMoney(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId);
    Products selectById(@Param("id") int id);
}
