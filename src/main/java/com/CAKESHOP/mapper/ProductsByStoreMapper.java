package com.CAKESHOP.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.dao.ProductsByStore;

public interface ProductsByStoreMapper {

    int insert(@Param("pojo") ProductsByStore pojo);

    int insertList(@Param("pojos") List< ProductsByStore> pojo);

    List<ProductsByStore> select(@Param("pojo") ProductsByStore pojo);

    int update(@Param("pojo") ProductsByStore pojo);

    List<ProductsByStore> searchByStoreId(@Param("storeId")int storeId);

    List<ProductsByStore> searchByProductId(@Param("productId")int productId);

    ProductsByStore searchByProductAndStore(@Param("productId")int productId, @Param("storeId")int storeId);

    void updateInventory(@Param("storeId")int storeId, @Param("productId")int productId, @Param("inventory")int inventory);
}
