package com.CAKESHOP.dao;

public class PersonalInformation {
    public int user_id = 0;//用户id
    private int user_phone = 0;//用户手机号
    private String user_name = "";//用户名
    private String user_password = "";//密码
    private String email = "";//邮箱
    private char gender = '男';//性别
    private String last_login = "";//最后登陆时间
    private int active = 1;//状态
    private String imgPath = "";//头像图片路径
    private int money = 0;//钱包余额

    public int getUser_id() { return this.user_id; }
    public int getUser_phone() { return this.user_phone; }
    public String getUser_name() { return this.user_name; }
    public String getPassword() { return this.user_password; }
    public String getEmail() { return this.email; }
    public char getGender() { return this.gender; }
    public String getLast_login() { return this.last_login; }
    public int getActive() { return this.active; }
    public String getImgPath() {return this.imgPath; }
    public int getMoney() { return this.money; }
    public void setUser_id(int user_id) { this.user_id = user_id;}

}
