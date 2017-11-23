package com.tuto.pojo.vo;

public class TtTripEditCustom  extends TtTripCustom{
    //查询gruoup的id和名字
    private Integer groupId;
    private String groupName;
    //查询independent的id和名字
    private Integer independentId;
    private String independentName;
    //查询trip_detail表
    private String hotelIntroduce;
    private String placeIntroduce;
    private String foodIntroduce;
    //查询跟团游景点规格表
    private Integer groupParamId;
    private String groupParamData;
    //查询自助游景点规格表
    private Integer independentParamId;
    private String independentParamData;

    //查询标志性景点表
    private String detailedAddress;

    public String getDetailedAddress() {
        return detailedAddress;
    }

    public void setDetailedAddress(String detailedAddress) {
        this.detailedAddress = detailedAddress;
    }

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public Integer getIndependentId() {
        return independentId;
    }

    public void setIndependentId(Integer independentId) {
        this.independentId = independentId;
    }

    public String getIndependentName() {
        return independentName;
    }

    public void setIndependentName(String independentName) {
        this.independentName = independentName;
    }

    public String getHotelIntroduce() {
        return hotelIntroduce;
    }

    public void setHotelIntroduce(String hotelIntroduce) {
        this.hotelIntroduce = hotelIntroduce;
    }

    public String getPlaceIntroduce() {
        return placeIntroduce;
    }

    public void setPlaceIntroduce(String placeIntroduce) {
        this.placeIntroduce = placeIntroduce;
    }

    public String getFoodIntroduce() {
        return foodIntroduce;
    }

    public void setFoodIntroduce(String foodIntroduce) {
        this.foodIntroduce = foodIntroduce;
    }

    public Integer getGroupParamId() {
        return groupParamId;
    }

    public void setGroupParamId(Integer groupParamId) {
        this.groupParamId = groupParamId;
    }

    public String getGroupParamData() {
        return groupParamData;
    }

    public void setGroupParamData(String groupParamData) {
        this.groupParamData = groupParamData;
    }

    public Integer getIndependentParamId() {
        return independentParamId;
    }

    public void setIndependentParamId(Integer independentParamId) {
        this.independentParamId = independentParamId;
    }

    public String getIndependentParamData() {
        return independentParamData;
    }

    public void setIndependentParamData(String independentParamData) {
        this.independentParamData = independentParamData;
    }
}
