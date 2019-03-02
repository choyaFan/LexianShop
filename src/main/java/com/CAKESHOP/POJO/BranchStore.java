package com.CAKESHOP.POJO;

import java.sql.Time;

public class BranchStore {
    private int storeId;
    private String storeName;
    private String storeTel;
    private String province;
    private String city;
    private String district;
    private String storeAddress;
    private double longitude;
    private double latitude;
    private String storeIntroduction;
    private Time storeStartTime;
    private Time storeCloseTime;
    private int storeStatus;

    public int getStoreId() {
        return storeId;
    }

    public void setStoreId(int storeId) {
        this.storeId = storeId;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getStoreTel() {
        return storeTel;
    }

    public void setStoreTel(String storeTel) {
        this.storeTel = storeTel;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getStoreAddress() {
        return storeAddress;
    }

    public void setStoreAddress(String storeAddress) {
        this.storeAddress = storeAddress;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public String getStoreIntroduction() {
        return storeIntroduction;
    }

    public void setStoreIntroduction(String storeIntroduction) {
        this.storeIntroduction = storeIntroduction;
    }

    public Time getStoreStartTime() {
        return storeStartTime;
    }

    public void setStoreStartTime(Time storeStartTime) {
        this.storeStartTime = storeStartTime;
    }

    public Time getStoreCloseTime() {
        return storeCloseTime;
    }

    public void setStoreCloseTime(Time storeCloseTime) {
        this.storeCloseTime = storeCloseTime;
    }

    public int getStoreStatus() {
        return storeStatus;
    }

    public void setStoreStatus(int storeStatus) {
        this.storeStatus = storeStatus;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        BranchStore that = (BranchStore) object;

        if (storeId != that.storeId) return false;
        if (Double.compare(that.longitude, longitude) != 0) return false;
        if (Double.compare(that.latitude, latitude) != 0) return false;
        if (storeStatus != that.storeStatus) return false;
        if (storeName != null ? !storeName.equals(that.storeName) : that.storeName != null) return false;
        if (storeTel != null ? !storeTel.equals(that.storeTel) : that.storeTel != null) return false;
        if (province != null ? !province.equals(that.province) : that.province != null) return false;
        if (city != null ? !city.equals(that.city) : that.city != null) return false;
        if (district != null ? !district.equals(that.district) : that.district != null) return false;
        if (storeAddress != null ? !storeAddress.equals(that.storeAddress) : that.storeAddress != null) return false;
        if (storeIntroduction != null ? !storeIntroduction.equals(that.storeIntroduction) : that.storeIntroduction != null)
            return false;
        if (storeStartTime != null ? !storeStartTime.equals(that.storeStartTime) : that.storeStartTime != null)
            return false;
        if (storeCloseTime != null ? !storeCloseTime.equals(that.storeCloseTime) : that.storeCloseTime != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = storeId;
        result = 31 * result + (storeName != null ? storeName.hashCode() : 0);
        result = 31 * result + (storeTel != null ? storeTel.hashCode() : 0);
        result = 31 * result + (province != null ? province.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (district != null ? district.hashCode() : 0);
        result = 31 * result + (storeAddress != null ? storeAddress.hashCode() : 0);
        temp = Double.doubleToLongBits(longitude);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(latitude);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (storeIntroduction != null ? storeIntroduction.hashCode() : 0);
        result = 31 * result + (storeStartTime != null ? storeStartTime.hashCode() : 0);
        result = 31 * result + (storeCloseTime != null ? storeCloseTime.hashCode() : 0);
        result = 31 * result + storeStatus;
        return result;
    }
}
