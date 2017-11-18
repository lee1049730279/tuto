package com.tuto.pojo.vo;

import com.tuto.pojo.po.TtPrice;

/**
 * User: jack
 * Date: 2017/11/17
 * Time: 19:05
 * Version:V1.0
 */
public class TtPriceCustom extends TtPrice {

    private String tripName;
    private String cityName;

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
}
