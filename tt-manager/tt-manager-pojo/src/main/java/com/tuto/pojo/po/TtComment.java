package com.tuto.pojo.po;

import java.util.Date;

public class TtComment {
    private Long id;

    private Long userId;

    private Long tripId;

    private Long ordersId;

    private Integer placeEvaluate;

    private Integer hotelEvaluate;

    private Integer serviceEvaluate;

    private Integer trafficEvaluate;

    private String content;

    private Date evaluateTime;

    private Long usefull;

    private Long useless;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getTripId() {
        return tripId;
    }

    public void setTripId(Long tripId) {
        this.tripId = tripId;
    }

    public Long getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Long ordersId) {
        this.ordersId = ordersId;
    }

    public Integer getPlaceEvaluate() {
        return placeEvaluate;
    }

    public void setPlaceEvaluate(Integer placeEvaluate) {
        this.placeEvaluate = placeEvaluate;
    }

    public Integer getHotelEvaluate() {
        return hotelEvaluate;
    }

    public void setHotelEvaluate(Integer hotelEvaluate) {
        this.hotelEvaluate = hotelEvaluate;
    }

    public Integer getServiceEvaluate() {
        return serviceEvaluate;
    }

    public void setServiceEvaluate(Integer serviceEvaluate) {
        this.serviceEvaluate = serviceEvaluate;
    }

    public Integer getTrafficEvaluate() {
        return trafficEvaluate;
    }

    public void setTrafficEvaluate(Integer trafficEvaluate) {
        this.trafficEvaluate = trafficEvaluate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getEvaluateTime() {
        return evaluateTime;
    }

    public void setEvaluateTime(Date evaluateTime) {
        this.evaluateTime = evaluateTime;
    }

    public Long getUsefull() {
        return usefull;
    }

    public void setUsefull(Long usefull) {
        this.usefull = usefull;
    }

    public Long getUseless() {
        return useless;
    }

    public void setUseless(Long useless) {
        this.useless = useless;
    }
}