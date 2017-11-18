package com.tuto.dao;

import com.tuto.pojo.po.TtTrip;

public interface TtTripMapperCustom {
    /*
       * 用于插入景点并返回起主键
       */
    void insert (TtTrip ttTrip);
}
