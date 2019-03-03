package com.CAKESHOP.dao;

public class SpecialProducts {
    private int id;
    private String sectorName;
    private int productId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSectorName() {
        return sectorName;
    }

    public void setSectorName(String sectorName) {
        this.sectorName = sectorName;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        SpecialProducts that = (SpecialProducts) object;

        if (id != that.id) return false;
        if (productId != that.productId) return false;
        if (sectorName != null ? !sectorName.equals(that.sectorName) : that.sectorName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (sectorName != null ? sectorName.hashCode() : 0);
        result = 31 * result + productId;
        return result;
    }
}
