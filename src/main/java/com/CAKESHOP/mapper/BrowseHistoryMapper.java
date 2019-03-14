package com.CAKESHOP.mapper;

import com.CAKESHOP.dao.BranchStore;
import com.CAKESHOP.dao.Browse;
import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.dao.Products;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BrowseHistoryMapper {
    List<PersonalInformation> selectUserPhone(@Param("user_name") String user_name);
    List<Browse> select(@Param("userPhone") String userPhone);
    List<Products> selectProductName(@Param("id") int id);
    List<BranchStore> selectStoreName(@Param("id") int id);
}
