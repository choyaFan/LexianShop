package com.CAKESHOP.dao;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.POJO.Citys;

public interface CitysDao {

    int insert(@Param("pojo") Citys pojo);

    int insertList(@Param("pojos") List< Citys> pojo);

    List<Citys> select(@Param("pojo") Citys pojo);

    int update(@Param("pojo") Citys pojo);

}
