package com.tuto.pojo.vo;

import java.util.List;

public class TtTripSearchResult {

    private long recordCount;
    private int totalPages;
    private List<TtTripSearchCustom> tripList;

    public long getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(long recordCount) {
        this.recordCount = recordCount;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public List<TtTripSearchCustom> getTripList() {
        return tripList;
    }

    public void setTripList(List<TtTripSearchCustom> tripList) {
        this.tripList = tripList;
    }
}
