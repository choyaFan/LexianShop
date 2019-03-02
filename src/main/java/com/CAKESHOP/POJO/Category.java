package com.CAKESHOP.POJO;

public class Category {
    private String fatherCategory;
    private String sonCategory;

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

        Category category = (Category) object;

        if (fatherCategory != null ? !fatherCategory.equals(category.fatherCategory) : category.fatherCategory != null)
            return false;
        if (sonCategory != null ? !sonCategory.equals(category.sonCategory) : category.sonCategory != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = fatherCategory != null ? fatherCategory.hashCode() : 0;
        result = 31 * result + (sonCategory != null ? sonCategory.hashCode() : 0);
        return result;
    }
}
