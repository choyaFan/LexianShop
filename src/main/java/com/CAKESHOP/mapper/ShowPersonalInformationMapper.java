package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.PersonalInformation;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface ShowPersonalInformationMapper {
    List<PersonalInformation> selectUserInformation(@Param("user_phone") String user_phone);
    void reviseInformation(@Param("user_phone")String user_phone, @Param("user_name")String user_name,
                           @Param("user_password")String user_password, @Param("gender")char gender, @Param("email")String email);
}
