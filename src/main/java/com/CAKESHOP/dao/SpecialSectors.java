package com.CAKESHOP.dao;

public class SpecialSectors {
    private int id;
    private String sectorName;

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

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        SpecialSectors that = (SpecialSectors) object;

        if (id != that.id) return false;
        if (sectorName != null ? !sectorName.equals(that.sectorName) : that.sectorName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (sectorName != null ? sectorName.hashCode() : 0);
        return result;
    }
}
