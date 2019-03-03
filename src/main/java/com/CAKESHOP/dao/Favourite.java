package com.CAKESHOP.dao;

import java.sql.Timestamp;

public class Favourite {
    private String userPhone;
    private int productId;
    private int storeId;
    private Timestamp createTime;

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

        Favourite favourite = (Favourite) object;

        if (productId != favourite.productId) return false;
        if (storeId != favourite.storeId) return false;
        if (userPhone != null ? !userPhone.equals(favourite.userPhone) : favourite.userPhone != null) return false;
        if (createTime != null ? !createTime.equals(favourite.createTime) : favourite.createTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userPhone != null ? userPhone.hashCode() : 0;
        result = 31 * result + productId;
        result = 31 * result + storeId;
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        return result;
    }
}
