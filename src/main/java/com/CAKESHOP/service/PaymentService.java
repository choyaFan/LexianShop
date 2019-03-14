package com.CAKESHOP.service;

public interface PaymentService {
    boolean paymentJudge(String userPhone, int totalPrice);
}