package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.mapper.ShowPersonalInformationMapper;
import com.CAKESHOP.service.ShowPersonalInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShowPersonalInformationServiceImpl implements ShowPersonalInformationService {
    @Autowired
    private ShowPersonalInformationMapper showPersonalInformationMapper;
    @Override
    public List<PersonalInformation> queryUserInformation(String user_phone_transfer){
        return showPersonalInformationMapper.selectUserInformation(user_phone_transfer);
    }
    @Override
    public void reviseUserInformation(PersonalInformation user){
        showPersonalInformationMapper.reviseInformation(user.getUser_phone(),user.getUser_name(),user.getUser_password(),
                user.getGender(),user.getEmail());
    }
}
