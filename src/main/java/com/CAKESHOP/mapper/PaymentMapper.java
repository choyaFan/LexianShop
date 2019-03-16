package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.PersonalInformation;
import org.apache.ibatis.annotations.Param;

public interface PaymentMapper {
    PersonalInformation selectByUserPhone(@Param("userPhone")String userPhone);
    void updateInfo(@Param("balance") double balance, @Param("userPhone")String userPhone);
}
