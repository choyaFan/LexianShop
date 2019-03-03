package com.CAKESHOP.dao;

public class Citys {
    private int id;
    private String cityid;
    private String city;
    private String cityPy;
    private String cityPym;
    private Integer clazz;
    private Integer parentId;
    private String postcode;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCityid() {
        return cityid;
    }

    public void setCityid(String cityid) {
        this.cityid = cityid;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCityPy() {
        return cityPy;
    }

    public void setCityPy(String cityPy) {
        this.cityPy = cityPy;
    }

    public String getCityPym() {
        return cityPym;
    }

    public void setCityPym(String cityPym) {
        this.cityPym = cityPym;
    }

    public Integer getClazz() {
        return clazz;
    }

    public void setClazz(Integer clazz) {
        this.clazz = clazz;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        Citys citys = (Citys) object;

        if (id != citys.id) return false;
        if (cityid != null ? !cityid.equals(citys.cityid) : citys.cityid != null) return false;
        if (city != null ? !city.equals(citys.city) : citys.city != null) return false;
        if (cityPy != null ? !cityPy.equals(citys.cityPy) : citys.cityPy != null) return false;
        if (cityPym != null ? !cityPym.equals(citys.cityPym) : citys.cityPym != null) return false;
        if (clazz != null ? !clazz.equals(citys.clazz) : citys.clazz != null) return false;
        if (parentId != null ? !parentId.equals(citys.parentId) : citys.parentId != null) return false;
        if (postcode != null ? !postcode.equals(citys.postcode) : citys.postcode != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (cityid != null ? cityid.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (cityPy != null ? cityPy.hashCode() : 0);
        result = 31 * result + (cityPym != null ? cityPym.hashCode() : 0);
        result = 31 * result + (clazz != null ? clazz.hashCode() : 0);
        result = 31 * result + (parentId != null ? parentId.hashCode() : 0);
        result = 31 * result + (postcode != null ? postcode.hashCode() : 0);
        return result;
    }
}
