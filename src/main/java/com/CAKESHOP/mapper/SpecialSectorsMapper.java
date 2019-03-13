package com.CAKESHOP.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.dao.SpecialSectors;

public interface SpecialSectorsMapper {

    int insert(@Param("pojo") SpecialSectors pojo);

    int insertList(@Param("pojos") List< SpecialSectors> pojo);

    List<SpecialSectors> select(@Param("pojo") SpecialSectors pojo);

    int update(@Param("pojo") SpecialSectors pojo);

    List<SpecialSectors> selectAll();
}
