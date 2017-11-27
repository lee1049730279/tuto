package com.tuto.pojo.vo;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 14:17
 * Version:V1.0
 */
public class TtTripSearchCustom {
    private String id;//solr中的id是字符串格式
    private String title;
    private String sTitle;
    private long price;
    private long realPrice;
    private String image;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getsTitle() {
        return sTitle;
    }

    public void setsTitle(String sTitle) {
        this.sTitle = sTitle;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public long getRealPrice() {
        return realPrice;
    }

    public void setRealPrice(long realPrice) {
        this.realPrice = realPrice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


}
