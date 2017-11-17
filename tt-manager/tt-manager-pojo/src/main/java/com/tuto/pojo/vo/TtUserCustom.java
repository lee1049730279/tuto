package com.tuto.pojo.vo;

import com.tuto.pojo.po.TtUser;

/**
 * User: Administrator
 * Date: 2017/11/17
 * Time: 9:01
 * Version:V1.0
 */
public class TtUserCustom extends TtUser {
    private String cityName;
    private String sexName;
    private String stateName;

    public String getSexName() {
        return sexName;
    }

    public void setSexName(String sexName) {
        this.sexName = sexName;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
}
