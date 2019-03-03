package com.CAKESHOP.dao;

import java.sql.Timestamp;

public class Products {
    private int id;
    private String productName;
    private String firstCategory;
    private String secondCategory;
    private String thirdCategory;
    private String productBriefIntroduction;
    private String productDetail;
    private String pic1Url;
    private String pic2Url;
    private String pic3Url;
    private String pic4Url;
    private Timestamp createTime;
    private Timestamp updatetime;
    private String unit;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getFirstCategory() {
        return firstCategory;
    }

    public void setFirstCategory(String firstCategory) {
        this.firstCategory = firstCategory;
    }

    public String getSecondCategory() {
        return secondCategory;
    }

    public void setSecondCategory(String secondCategory) {
        this.secondCategory = secondCategory;
    }

    public String getThirdCategory() {
        return thirdCategory;
    }

    public void setThirdCategory(String thirdCategory) {
        this.thirdCategory = thirdCategory;
    }

    public String getProductBriefIntroduction() {
        return productBriefIntroduction;
    }

    public void setProductBriefIntroduction(String productBriefIntroduction) {
        this.productBriefIntroduction = productBriefIntroduction;
    }

    public String getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(String productDetail) {
        this.productDetail = productDetail;
    }

    public String getPic1Url() {
        return pic1Url;
    }

    public void setPic1Url(String pic1Url) {
        this.pic1Url = pic1Url;
    }

    public String getPic2Url() {
        return pic2Url;
    }

    public void setPic2Url(String pic2Url) {
        this.pic2Url = pic2Url;
    }

    public String getPic3Url() {
        return pic3Url;
    }

    public void setPic3Url(String pic3Url) {
        this.pic3Url = pic3Url;
    }

    public String getPic4Url() {
        return pic4Url;
    }

    public void setPic4Url(String pic4Url) {
        this.pic4Url = pic4Url;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Timestamp getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Timestamp updatetime) {
        this.updatetime = updatetime;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        Products products = (Products) object;

        if (id != products.id) return false;
        if (productName != null ? !productName.equals(products.productName) : products.productName != null)
            return false;
        if (firstCategory != null ? !firstCategory.equals(products.firstCategory) : products.firstCategory != null)
            return false;
        if (secondCategory != null ? !secondCategory.equals(products.secondCategory) : products.secondCategory != null)
            return false;
        if (thirdCategory != null ? !thirdCategory.equals(products.thirdCategory) : products.thirdCategory != null)
            return false;
        if (productBriefIntroduction != null ? !productBriefIntroduction.equals(products.productBriefIntroduction) : products.productBriefIntroduction != null)
            return false;
        if (productDetail != null ? !productDetail.equals(products.productDetail) : products.productDetail != null)
            return false;
        if (pic1Url != null ? !pic1Url.equals(products.pic1Url) : products.pic1Url != null) return false;
        if (pic2Url != null ? !pic2Url.equals(products.pic2Url) : products.pic2Url != null) return false;
        if (pic3Url != null ? !pic3Url.equals(products.pic3Url) : products.pic3Url != null) return false;
        if (pic4Url != null ? !pic4Url.equals(products.pic4Url) : products.pic4Url != null) return false;
        if (createTime != null ? !createTime.equals(products.createTime) : products.createTime != null) return false;
        if (updatetime != null ? !updatetime.equals(products.updatetime) : products.updatetime != null) return false;
        if (unit != null ? !unit.equals(products.unit) : products.unit != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (productName != null ? productName.hashCode() : 0);
        result = 31 * result + (firstCategory != null ? firstCategory.hashCode() : 0);
        result = 31 * result + (secondCategory != null ? secondCategory.hashCode() : 0);
        result = 31 * result + (thirdCategory != null ? thirdCategory.hashCode() : 0);
        result = 31 * result + (productBriefIntroduction != null ? productBriefIntroduction.hashCode() : 0);
        result = 31 * result + (productDetail != null ? productDetail.hashCode() : 0);
        result = 31 * result + (pic1Url != null ? pic1Url.hashCode() : 0);
        result = 31 * result + (pic2Url != null ? pic2Url.hashCode() : 0);
        result = 31 * result + (pic3Url != null ? pic3Url.hashCode() : 0);
        result = 31 * result + (pic4Url != null ? pic4Url.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (updatetime != null ? updatetime.hashCode() : 0);
        result = 31 * result + (unit != null ? unit.hashCode() : 0);
        return result;
    }
}
