/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author giang
 */
public class DetailCustomer {
    private String email;
    private String name;
    private boolean gender;
    private Date dob;
    private boolean singleRoom;
    private String tourId;

    public DetailCustomer() {
    }

    public DetailCustomer(String email, String name, boolean gender, Date dob, boolean singleRoom, String tourId) {
        this.email = email;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.singleRoom = singleRoom;
        this.tourId = tourId;
    }
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isSingleRoom() {
        return singleRoom;
    }

    public void setSingleRoom(boolean singleRoom) {
        this.singleRoom = singleRoom;
    }

    public String getTourId() {
        return tourId;
    }

    public void setTourId(String tourId) {
        this.tourId = tourId;
    }

    

}
