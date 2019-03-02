package com.CAKESHOP.POJO;

import java.io.Serializable;

public class FavouritePK implements Serializable {
    private String userPhone;
    private int productId;
    private int storeId;

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

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        FavouritePK that = (FavouritePK) object;

        if (productId != that.productId) return false;
        if (storeId != that.storeId) return false;
        if (userPhone != null ? !userPhone.equals(that.userPhone) : that.userPhone != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userPhone != null ? userPhone.hashCode() : 0;
        result = 31 * result + productId;
        result = 31 * result + storeId;
        return result;
    }
}
