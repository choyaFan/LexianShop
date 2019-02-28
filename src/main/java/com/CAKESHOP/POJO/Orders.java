package com.CAKESHOP.POJO;

public class Orders {
    private int id;
    private int orderId;
    private String userPhone;
    private int productId;
    private int storeId;
    private int amount;
    private double singlePrice;
    private double totalPrice;
    private int orderStatus;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        Orders orders = (Orders) object;

        if (id != orders.id) return false;
        if (orderId != orders.orderId) return false;
        if (productId != orders.productId) return false;
        if (storeId != orders.storeId) return false;
        if (amount != orders.amount) return false;
        if (Double.compare(orders.singlePrice, singlePrice) != 0) return false;
        if (Double.compare(orders.totalPrice, totalPrice) != 0) return false;
        if (orderStatus != orders.orderStatus) return false;
        if (userPhone != null ? !userPhone.equals(orders.userPhone) : orders.userPhone != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + orderId;
        result = 31 * result + (userPhone != null ? userPhone.hashCode() : 0);
        result = 31 * result + productId;
        result = 31 * result + storeId;
        result = 31 * result + amount;
        temp = Double.doubleToLongBits(singlePrice);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(totalPrice);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + orderStatus;
        return result;
    }
}
