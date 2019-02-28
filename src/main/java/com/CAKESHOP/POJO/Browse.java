package com.CAKESHOP.POJO;

import java.sql.Timestamp;

public class Browse {
    private int browseId;
    private String userPhone;
    private int productId;
    private int storeId;
    private Timestamp browseTime;

    public int getBrowseId() {
        return browseId;
    }

    public void setBrowseId(int browseId) {
        this.browseId = browseId;
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

    public Timestamp getBrowseTime() {
        return browseTime;
    }

    public void setBrowseTime(Timestamp browseTime) {
        this.browseTime = browseTime;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        Browse browse = (Browse) object;

        if (browseId != browse.browseId) return false;
        if (productId != browse.productId) return false;
        if (storeId != browse.storeId) return false;
        if (userPhone != null ? !userPhone.equals(browse.userPhone) : browse.userPhone != null) return false;
        if (browseTime != null ? !browseTime.equals(browse.browseTime) : browse.browseTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = browseId;
        result = 31 * result + (userPhone != null ? userPhone.hashCode() : 0);
        result = 31 * result + productId;
        result = 31 * result + storeId;
        result = 31 * result + (browseTime != null ? browseTime.hashCode() : 0);
        return result;
    }
}
