package com.example.drive;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TaxiVO {
    private int id;
    private String username;
    private String phonenumber;
    private String departure;
    private String arrival;
    private String grade;

    private String reserveDate;

    public Date getReserDate() {
        return reserDate;
    }

    public void setReserDate(Date reserDate) {
        this.reserDate = reserDate;
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date reserDate;
    private boolean wheelchair;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getArrival() {
        return arrival;
    }

    public void setArrival(String arrival) {
        this.arrival = arrival;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getReserveDate() {
        return reserveDate;
    }

    public void setReserveDate(String reserveDate) {
        this.reserveDate = reserveDate;
    }

    public boolean isWheelchair() {
        return wheelchair;
    }

    public void setWheelchair(boolean wheelchair) {
        this.wheelchair = wheelchair;
    }

}
