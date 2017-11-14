package com.tuto.pojo.po;

public class TtTrip {
    private Long id;

    private String title;

    private String sTitle;

    private Long price;

    private Long realPrice;

    private Long positionId;

    private Integer type;

    private String traffic;

    private String hotel;

    private Long buyTime;

    private Float goodRate;

    private Float placeScore;

    private Float hotelScore;

    private Float serviceScore;

    private Float trafficScore;

    private Integer state;

    private Long cityId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getsTitle() {
        return sTitle;
    }

    public void setsTitle(String sTitle) {
        this.sTitle = sTitle == null ? null : sTitle.trim();
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getRealPrice() {
        return realPrice;
    }

    public void setRealPrice(Long realPrice) {
        this.realPrice = realPrice;
    }

    public Long getPositionId() {
        return positionId;
    }

    public void setPositionId(Long positionId) {
        this.positionId = positionId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getTraffic() {
        return traffic;
    }

    public void setTraffic(String traffic) {
        this.traffic = traffic == null ? null : traffic.trim();
    }

    public String getHotel() {
        return hotel;
    }

    public void setHotel(String hotel) {
        this.hotel = hotel == null ? null : hotel.trim();
    }

    public Long getBuyTime() {
        return buyTime;
    }

    public void setBuyTime(Long buyTime) {
        this.buyTime = buyTime;
    }

    public Float getGoodRate() {
        return goodRate;
    }

    public void setGoodRate(Float goodRate) {
        this.goodRate = goodRate;
    }

    public Float getPlaceScore() {
        return placeScore;
    }

    public void setPlaceScore(Float placeScore) {
        this.placeScore = placeScore;
    }

    public Float getHotelScore() {
        return hotelScore;
    }

    public void setHotelScore(Float hotelScore) {
        this.hotelScore = hotelScore;
    }

    public Float getServiceScore() {
        return serviceScore;
    }

    public void setServiceScore(Float serviceScore) {
        this.serviceScore = serviceScore;
    }

    public Float getTrafficScore() {
        return trafficScore;
    }

    public void setTrafficScore(Float trafficScore) {
        this.trafficScore = trafficScore;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Long getCityId() {
        return cityId;
    }

    public void setCityId(Long cityId) {
        this.cityId = cityId;
    }
}