package com.tuto.service;

import com.tuto.pojo.po.TtTrip;
import com.tuto.pojo.po.TtTripDetail;

import java.util.List;

public interface TripAddService {
    //添加景点
    int saveTrip(TtTrip ttTrip, Integer gid, Integer nid, TtTripDetail ttTripDetail, List<Integer> tids);
}
