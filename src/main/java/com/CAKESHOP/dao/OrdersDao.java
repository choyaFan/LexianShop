package com.CAKESHOP.dao;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.POJO.Orders;

public interface OrdersDao {

    int insert(@Param("pojo") Orders pojo);

    int insertList(@Param("pojos") List< Orders> pojo);

    List<Orders> select(@Param("pojo") Orders pojo);

    int update(@Param("pojo") Orders pojo);

}
