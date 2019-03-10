package com.CAKESHOP.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.dao.BranchStore;

public interface BranchStoreMapper {

    int insert(@Param("pojo") BranchStore pojo);

    int insertList(@Param("pojos") List< BranchStore> pojo);

    List<BranchStore> select(@Param("pojo") BranchStore pojo);

    int update(@Param("pojo") BranchStore pojo);

}
