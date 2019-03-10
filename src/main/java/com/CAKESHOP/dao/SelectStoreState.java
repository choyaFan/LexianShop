package com.CAKESHOP.dao;

import java.sql.Time;

public class SelectStoreState {
    private static int id;
    private static String storeName;
    private static String storeTel;
    private static String province;
    private static String city;
    private static String district;
    private static String storeAddress;
    private static double longitude;
    private static double latitude;
    private static String storeIntroduction;
    private static Time storeStartTime;
    private static Time storeCloseTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        SelectStoreState.id = id;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        SelectStoreState.storeName = storeName;
    }

    public String getStoreTel() {
        return storeTel;
    }

    public void setStoreTel(String storeTel) {
        SelectStoreState.storeTel = storeTel;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        SelectStoreState.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        SelectStoreState.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        SelectStoreState.district = district;
    }

    public String getStoreAddress() {
        return storeAddress;
    }

    public void setStoreAddress(String storeAddress) {
        SelectStoreState.storeAddress = storeAddress;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        SelectStoreState.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        SelectStoreState.latitude = latitude;
    }

    public String getStoreIntroduction() {
        return storeIntroduction;
    }

    public void setStoreIntroduction(String storeIntroduction) {
        SelectStoreState.storeIntroduction = storeIntroduction;
    }

    public Time getStoreStartTime() {
        return storeStartTime;
    }

    public void setStoreStartTime(Time storeStartTime) {
        SelectStoreState.storeStartTime = storeStartTime;
    }

    public Time getStoreCloseTime() {
        return storeCloseTime;
    }

    public void setStoreCloseTime(Time storeCloseTime) {
        SelectStoreState.storeCloseTime = storeCloseTime;
    }


}
