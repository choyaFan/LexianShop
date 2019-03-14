package com.CAKESHOP.dao;

public class DisplayProducts {
    private int productId;
    private int inventory;
    private double originalPrice;
    private double discount;
    private int productStatus;
    private String productName;
    private String thirdCategory;
    private String pic1Url;
    private String unit;

    public int getProductId(){
        return this.productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getInventory(){
        return this.inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public double getOriginalPrice(){
        return this.originalPrice;
    }

    public void setOriginalPrice(double originalPrice) {
        this.originalPrice = originalPrice;
    }

    public double getDiscount(){
        return this.discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getProductStatus(){
        return this.productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    public String getProductName(){
        return this.productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getThirdCategory(){
        return this.thirdCategory;
    }

    public void setThirdCategory(String thirdCategory) {
        this.thirdCategory = thirdCategory;
    }

    public String getPic1Url(){
        return this.pic1Url;
    }

    public void setPic1Url(String pic1Url) {
        this.pic1Url = pic1Url;
    }

    public String getUnit(){
        return this.unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

}
