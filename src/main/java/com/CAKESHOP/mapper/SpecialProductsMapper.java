package com.CAKESHOP.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.dao.SpecialProducts;

public interface SpecialProductsMapper {

    int insert(@Param("pojo") SpecialProducts pojo);

    int insertList(@Param("pojos") List< SpecialProducts> pojo);

    List<SpecialProducts> select(@Param("pojo") SpecialProducts pojo);

    int update(@Param("pojo") SpecialProducts pojo);

    List<SpecialProducts> searchBySectorId(@Param("sectorName")String sectorName);
}
