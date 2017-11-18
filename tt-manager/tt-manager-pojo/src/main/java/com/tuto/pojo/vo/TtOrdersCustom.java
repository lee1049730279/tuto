package com.tuto.pojo.vo;

import com.tuto.pojo.po.TtOrders;
import com.tuto.pojo.po.TtUserContact;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/16
 * Time: 20:51
 * Version:V1.0
 */
public class TtOrdersCustom extends TtOrders {
    private String tripName;
    private String cityName;
    private String userName;
    private String stateName;
    private List<TtUserContact> userContact;

    public List<TtUserContact> getUserContact() {
        return userContact;
    }

    public void setUserContact(List<TtUserContact> userContact) {
        this.userContact = userContact;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public String getTripName() {
        return tripName;
    }

    public void setTripName(String tripName) {
        this.tripName = tripName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
