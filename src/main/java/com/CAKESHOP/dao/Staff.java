package com.CAKESHOP.dao;

public class Staff {
    private int id;
    private int role;
    private String staffPassword;
    private String staffName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        Staff staff = (Staff) object;

        if (id != staff.id) return false;
        if (role != staff.role) return false;
        if (staffPassword != null ? !staffPassword.equals(staff.staffPassword) : staff.staffPassword != null)
            return false;
        if (staffName != null ? !staffName.equals(staff.staffName) : staff.staffName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + role;
        result = 31 * result + (staffPassword != null ? staffPassword.hashCode() : 0);
        result = 31 * result + (staffName != null ? staffName.hashCode() : 0);
        return result;
    }
}
