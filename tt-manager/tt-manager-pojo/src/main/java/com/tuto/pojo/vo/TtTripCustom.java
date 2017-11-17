package com.tuto.pojo.vo;

import com.tuto.pojo.po.TtTrip;

public class TtTripCustom extends TtTrip{
    private String cityName;
    private String priceView; //因为数据库存的是分，而显示在页面上的是元，所以在dao层查询的时候就格式化一下
    private String realPriceView; //同上

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getPriceView() {
        return priceView;
    }

    public void setPriceView(String priceView) {
        this.priceView = priceView;
    }

    public String getRealPriceView() {
        return realPriceView;
    }

    public void setRealPriceView(String realPriceView) {
        this.realPriceView = realPriceView;
    }
}
