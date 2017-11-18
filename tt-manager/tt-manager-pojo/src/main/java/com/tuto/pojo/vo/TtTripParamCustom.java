package com.tuto.pojo.vo;

import com.tuto.pojo.po.TtTripGroupParam;

public class TtTripParamCustom extends TtTripGroupParam{
    private String tripCatName;
    //所属类型，因为现实规格里的是两张不同的表，当删除的时候不能确定是删除哪张表，所以加个字段，删除时判断是属于跟团游还是自助游
    //再去对象的表删除
    //1表示跟团游  2表示自助游
    private int ofType;

    public String getTripCatName() {
        return tripCatName;
    }

    public void setTripCatName(String tripCatName) {
        this.tripCatName = tripCatName;
    }

    public int getOfType() {
        return ofType;
    }

    public void setOfType(int ofType) {
        this.ofType = ofType;
    }
}

