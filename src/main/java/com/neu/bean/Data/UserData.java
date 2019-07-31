package com.neu.bean.Data;

public class UserData {
    String registration;
    String yearMonth;

    public String getRegistration() {
        return registration;
    }

    public void setRegistration(String registration) {
        this.registration = registration;
    }

    public String getYearMonth() {
        return yearMonth;
    }

    public void setYearMonth(String yearMonth) {
        this.yearMonth = yearMonth;
    }

    @Override
    public String toString() {
        return "UserData{" +
                "registration='" + registration + '\'' +
                ", yearMonth='" + yearMonth + '\'' +
                '}';
    }
}
