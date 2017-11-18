package com.tuto.pojo.vo;

import com.tuto.pojo.po.TtComment;

public class TtCommentCustom extends TtComment {
    private String userName;
    private String tripName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getTripName() {
        return tripName;
    }

    public void setTripName(String tripName) {
        this.tripName = tripName;
    }
}
