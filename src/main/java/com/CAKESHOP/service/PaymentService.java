package com.CAKESHOP.service;

public interface PaymentService {
    boolean paymentJudge(String userPhone, double totalPrice);
    void addMoney(String userPhone, double money);
}