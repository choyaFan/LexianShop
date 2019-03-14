package com.CAKESHOP.dao;

public class Categorymapper23 {
    private int id;
    private String fatherCategory;
    private String sonCategory;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFatherCategory() {
        return fatherCategory;
    }

    public void setFatherCategory(String fatherCategory) {
        this.fatherCategory = fatherCategory;
    }

    public String getSonCategory() {
        return sonCategory;
    }

    public void setSonCategory(String sonCategory) {
        this.sonCategory = sonCategory;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        Categorymapper23 that = (Categorymapper23) object;

        if (id != that.id) return false;
        if (fatherCategory != null ? !fatherCategory.equals(that.fatherCategory) : that.fatherCategory != null)
            return false;
        if (sonCategory != null ? !sonCategory.equals(that.sonCategory) : that.sonCategory != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (fatherCategory != null ? fatherCategory.hashCode() : 0);
        result = 31 * result + (sonCategory != null ? sonCategory.hashCode() : 0);
        return result;
    }
}
