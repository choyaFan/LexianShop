package com.CAKESHOP.service;

import com.CAKESHOP.dao.PersonalInformation;

import java.util.List;

public interface SignUpService {
    void addUser(PersonalInformation user);
    List<PersonalInformation> queryAllUsers();

}
