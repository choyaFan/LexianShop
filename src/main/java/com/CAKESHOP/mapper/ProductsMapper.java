package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.DisplayProducts;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.dao.SingleProduct;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsMapper {
    //Ĭ�Ϸ�ʽ��ʾ
    //ģ��������Ʒ
    List<DisplayProducts> selectProductsSearch(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //ģ��������Ʒ���������
    List<DisplayProducts> selectProductsSearchCd(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //�۸�������ʾ
    //ģ��������Ʒ
    List<DisplayProducts> selectProductsSearchAP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //ģ��������Ʒ���������
    List<DisplayProducts> selectProductsSearchCdAP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //�۸�����ʾ
    //ģ��������Ʒ
    List<DisplayProducts> selectProductsSearchDP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //ģ��������Ʒ���������
    List<DisplayProducts> selectProductsSearchCdDP(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //����������ʾ
    //ģ��������Ʒ
    List<DisplayProducts> selectProductsSearchAS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //ģ��������Ʒ���������
    List<DisplayProducts> selectProductsSearchCdAS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //����������ʾ
    //ģ��������Ʒ
    List<DisplayProducts> selectProductsSearchDS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //ģ��������Ʒ���������
    List<DisplayProducts> selectProductsSearchCdDS(@Param(value="startPos") Integer startPos, @Param(value="pageSize") Integer pageSize, @Param("searchKey") String searchKey, @Param("storeId") String storeId,  @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);

    //ģ��������Ʒ����
    int getSelectProductsCount(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId, @Param(value="cdmoney") List<String> cdmoney);
    //ģ��������Ʒ����,�������
    int getSelectProductsCountCd(@Param(value="searchKey") String searchKey, @Param(value="storeId") String storeId, @Param(value="cdclass") List<String> cdclass, @Param(value="cdmoney") List<String> cdmoney);
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

    //���ҵ�����Ʒ�����ŵ���ʾ
    SingleProduct getSingleProduct(@Param(value = "storeId") String storeId, @Param(value = "productId") String productId);

    //����ĳ�ŵ굥һ����µ���Ʒ����
    List<DisplayProducts> selectHotProductsByCategory(@Param(value="storeId") String storeId, @Param(value = "category") String category);

    //������Ʒ����
    int countProducts();

    //���������������
    List<String> selectThirdCategory();

    //����ĳ��Ʒ���������
    String getProductThirdCategory( @Param(value ="productId")int productId);

}
