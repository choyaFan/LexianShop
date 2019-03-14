package com.CAKESHOP.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.dao.Browse;

public interface BrowseMapper {

    int insert(@Param("pojo") Browse pojo);

    int insertList(@Param("pojos") List< Browse> pojo);

    List<Browse> select(@Param("pojo") Browse pojo);

    int update(@Param("pojo") Browse pojo);

}
