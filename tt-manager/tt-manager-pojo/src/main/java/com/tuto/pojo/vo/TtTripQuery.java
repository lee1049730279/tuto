package com.tuto.pojo.vo;

/**
 * 景点列表的搜索条件
 * sTitle:景点标题
 * state：状态  上架  下架   删除
 */
public class TtTripQuery {
    private String sTitle;
    private String state;

    public String getsTitle() {
        return sTitle;
    }

    public void setsTitle(String sTitle) {
        this.sTitle = sTitle;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
