package com.CAKESHOP.dao;

import java.sql.Timestamp;

public class PersonalInformation {
    public int user_id = 0;//用户id
    private String user_phone = "432";//用户手机号
    private String user_name;//用户名
    private String user_password = "45643";//密码
    private String email = "087@";//邮箱
    private char gender = 'm';//性别
    private Timestamp last_login = new Timestamp(System.currentTimeMillis());//最后登陆时间
    private int active = 1;//状态
    private String portrait_url = "hu";//头像图片路径
    private double money = 0;//钱包余额

    public int getUser_id() { return this.user_id; }
    public String getUser_phone() { return this.user_phone; }
    public String getUser_name() { return this.user_name; }
    public String getUser_password() { return this.user_password; }
    public String getEmail() { return this.email; }
    public char getGender() { return this.gender; }
    public Timestamp getLast_login() { return this.last_login; }
    public int getActive() { return this.active; }
    public String getPortrait_url() {return this.portrait_url; }
    public double getMoney() { return this.money; }

    public void setUser_id(int user_id) { this.user_id = user_id;}
    public void setUser_phone(String user_phone) { this.user_phone=user_phone;}
    public void setUser_name(String user_name) { this.user_name=user_name;}
    public void setUser_password(String user_password) { this.user_password=user_password;}
    public void setEmail(String email) { this.email=email;}
    public void setGender(char gender) { this.gender=gender;}
    public void setLast_login(Timestamp last_login) {this.last_login=last_login;}
    public void setActive(int active) {this.active=active;}
    public void setPortrait_url(String portrait_url) { this.portrait_url=portrait_url;}
    public void setMoney(double money) { this.money=money;}
}
