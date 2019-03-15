package com.CAKESHOP.controller;

public class GlobalStatus {
    private static int status = 0;//�����ʼ��½״̬
    private static int storeId = 0;//ѡ���ŵ�ID

    public int log_in(){
        return status = 1;
    }
    public int log_out(){
        return status = 0;
    }
    public int get(){
        return status;
    }
    public int getStoreId() {
        return storeId;
    }
    public void setStoreId( int storeId) {
        this.storeId = storeId;
    }
}
