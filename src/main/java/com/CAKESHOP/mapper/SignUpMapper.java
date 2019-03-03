package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.PersonalInformation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SignUpMapper {
 //   void insertUser(PersonalInformation user);
    List<PersonalInformation> selectAllUsers();
    void insertUser(@Param("user_name")String user_name,@Param("user_password")String user_password);
}
