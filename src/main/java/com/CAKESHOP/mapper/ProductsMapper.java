package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.Products;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsMapper {
    //ģ��������Ʒ
    List<Products> selectProductsSearch(@Param("searchKey") String searchKey);
    //����������Ʒ
    List<Products> selectAllProducts();
    Products selectById(@Param("id") int id);
    //��ҳ����
    List<Products> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize) throws Exception;
    //��ѯ��Ʒ����
    int getProductsCount();
}
