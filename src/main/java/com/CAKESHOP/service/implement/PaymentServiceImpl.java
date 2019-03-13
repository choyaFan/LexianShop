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
    public boolean paymentJudge(String userPhone, int totalPrice){
        PersonalInformation personalInformation = paymentMapper.selectByUserPhone(userPhone);
        System.out.println("userId:   " + personalInformation.getUser_id());
        if(personalInformation.getMoney() >= totalPrice){
            paymentMapper.updateInfo(personalInformation.getMoney() - totalPrice, userPhone);
            return true;
        }
        else{
            return false;
        }
    }
}
