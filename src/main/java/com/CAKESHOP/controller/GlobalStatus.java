package com.CAKESHOP.controller;

public class GlobalStatus {
    public static int status = 0;//定义初始登陆状态
    public int log_in(){
        return status = 1;
    }
    public int log_out(){
        return status = 0;
    }
    public int get(){
        return status;
    }
}
