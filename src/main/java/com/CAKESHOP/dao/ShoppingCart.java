package com.CAKESHOP.dao;

import java.sql.Timestamp;

public class ShoppingCart {
    private int id=-1;
    private String userPhone;
    private int productId;
    private int storeId;

    public double getSinglePrice() {
        return singlePrice;
    }

    public void setSinglePrice(double singlePrice) {
        this.singlePrice = singlePrice;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    private double singlePrice;
    private double totalPrice;
    private int amount=-1;
    private Timestamp createTime;

    public ShoppingCart() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getStoreId() {
        return storeId;
    }

    public void setStoreId(int storeId) {
        this.storeId = storeId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        ShoppingCart that = (ShoppingCart) object;

        if (id != that.id) return false;
        if (productId != that.productId) return false;
        if (storeId != that.storeId) return false;
        if (amount != that.amount) return false;
        if (userPhone != null ? !userPhone.equals(that.userPhone) : that.userPhone != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + (userPhone != null ? userPhone.hashCode() : 0);
        result = 31 * result + productId;
        result = 31 * result + storeId;
        result = 31 * result + amount;
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        return result;
    }
}
