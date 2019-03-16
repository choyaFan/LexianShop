package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.PersonalInformation;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface SignUpMapper {
    List<PersonalInformation> selectAllUsers();
    void insertUser(@Param("user_phone")String user_phone, @Param("user_name")String user_name, @Param("user_password")String user_password,
                    @Param("money")double money, @Param("gender")char gender, @Param("email")String email, @Param("portrait_url")String portrait_url,
                    @Param("last_login") Timestamp last_login, @Param("active")int active);


}
