package com.CAKESHOP.POJO;

public class Staff {
    private int staffId;
    private int role;
    private String staffPassword;

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
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

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;

        Staff staff = (Staff) object;

        if (staffId != staff.staffId) return false;
        if (role != staff.role) return false;
        if (staffPassword != null ? !staffPassword.equals(staff.staffPassword) : staff.staffPassword != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = staffId;
        result = 31 * result + role;
        result = 31 * result + (staffPassword != null ? staffPassword.hashCode() : 0);
        return result;
    }
}
