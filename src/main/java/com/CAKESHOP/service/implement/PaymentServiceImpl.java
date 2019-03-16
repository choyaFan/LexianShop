package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.PersonalInformation;
import com.CAKESHOP.mapper.OrdersMapper;
import com.CAKESHOP.mapper.PaymentMapper;
import com.CAKESHOP.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {
    @Autowired
    private PaymentMapper paymentMapper = null;
    @Autowired
    private OrdersMapper ordersMapper = null;
    @Override
    public boolean paymentJudge(String userPhone, double totalPrice){
        PersonalInformation personalInformation = paymentMapper.selectByUserPhone(userPhone);
        System.out.println("userPhone:   " + userPhone);
        if(personalInformation.getMoney() >= totalPrice){
            paymentMapper.updateInfo(personalInformation.getMoney() - totalPrice, userPhone);
            return true;
        }
        else{
            return false;
        }
    }
    @Override
    public void addMoney(String userPhone, double money){
        PersonalInformation personalInformation = paymentMapper.selectByUserPhone(userPhone);
        paymentMapper.updateInfo(personalInformation.getMoney() + money, userPhone);
    }
}
