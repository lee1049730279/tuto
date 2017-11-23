package com.tuto.service;

import com.tuto.pojo.po.TtTrip;
import com.tuto.pojo.po.TtTripDetail;
import com.tuto.pojo.vo.TtTripEditCustom;

public interface TripEditService {
    //根据id查询景点，并将数据进行数据回显
    TtTripEditCustom findTripById(Long id);

    int updateTrip(TtTrip ttTrip, TtTripDetail ttTripDetail, String paramData,String detailedAddress);
}
