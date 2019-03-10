package com.CAKESHOP.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.dao.Orders;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

@Repository
public interface OrdersMapper {

    int insert(@Param("pojo") Orders pojo);

    int insertList(@Param("pojos") List< Orders> pojo);

    List<Orders> select(@Param("pojo") Orders pojo);

    int update(@Param("pojo") Orders pojo);

    List<Orders> selectAllOrders();

    List<Orders> selectByUserId(@Param("userPhone") String userPhone);

    List<Orders> selectByOrderId(@Param("orderId")int orderId);
}
