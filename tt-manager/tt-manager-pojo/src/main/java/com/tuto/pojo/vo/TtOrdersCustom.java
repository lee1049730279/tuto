package com.tuto.pojo.vo;

import com.tuto.pojo.po.TtOrders;

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
