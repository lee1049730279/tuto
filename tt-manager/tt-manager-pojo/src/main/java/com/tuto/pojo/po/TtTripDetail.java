package com.tuto.pojo.po;

public class TtTripDetail {
    private Long id;

    private Long tripId;

    private String placeIntroduce;

    private String hotelIntroduce;

    private String foodIntroduce;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTripId() {
        return tripId;
    }

    public void setTripId(Long tripId) {
        this.tripId = tripId;
    }

    public String getPlaceIntroduce() {
        return placeIntroduce;
    }

    public void setPlaceIntroduce(String placeIntroduce) {
        this.placeIntroduce = placeIntroduce == null ? null : placeIntroduce.trim();
    }

    public String getHotelIntroduce() {
        return hotelIntroduce;
    }

    public void setHotelIntroduce(String hotelIntroduce) {
        this.hotelIntroduce = hotelIntroduce == null ? null : hotelIntroduce.trim();
    }

    public String getFoodIntroduce() {
        return foodIntroduce;
    }

    public void setFoodIntroduce(String foodIntroduce) {
        this.foodIntroduce = foodIntroduce == null ? null : foodIntroduce.trim();
    }
}