package com.CAKESHOP.service;

import com.CAKESHOP.dao.PersonalInformation;

public interface SignInService {
    String login (PersonalInformation user);
    String getUserName(String userPhone);
}
