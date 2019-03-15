package com.CAKESHOP.service;

import com.CAKESHOP.dao.PersonalInformation;

import java.util.List;

public interface ShowPersonalInformationService {
    List<PersonalInformation> queryUserInformation(String user_phone_transfer);
    void reviseUserInformation(PersonalInformation user);
}
