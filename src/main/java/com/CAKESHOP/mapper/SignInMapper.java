package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.PersonalInformation;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface SignInMapper {

    List<PersonalInformation> selectUser(@Param("user_phone") String user_phone);
}
