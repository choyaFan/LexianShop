package com.CAKESHOP.POJO;

public class ProductsByStore {
    private int id;
    private int storeId;
    private int productId;
    private int inventory;
    private double originalPrice;
    private double discount;
    private int productStatus;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStoreId() {
        return storeId;
    }

    public void setStoreId(int storeId) {
        this.storeId = storeId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public double getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(double originalPrice) {
        this.originalPrice = originalPrice;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        ProductsByStore that = (ProductsByStore) object;

        if (id != that.id) return false;
        if (storeId != that.storeId) return false;
        if (productId != that.productId) return false;
        if (inventory != that.inventory) return false;
        if (Double.compare(that.originalPrice, originalPrice) != 0) return false;
        if (Double.compare(that.discount, discount) != 0) return false;
        if (productStatus != that.productStatus) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + storeId;
        result = 31 * result + productId;
        result = 31 * result + inventory;
        temp = Double.doubleToLongBits(originalPrice);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(discount);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + productStatus;
        return result;
    }
}
