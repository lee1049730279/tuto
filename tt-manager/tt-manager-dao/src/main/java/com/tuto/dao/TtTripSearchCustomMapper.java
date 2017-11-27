package com.tuto.dao;


import com.tuto.pojo.vo.TtTripSearchCustom;

import java.util.List;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 14:20
 * Version:V1.0
 */
public interface TtTripSearchCustomMapper {
    /**
     * 查询所有景点封装到指定BEAN中
     * @return
     */
    List<TtTripSearchCustom> listSearchTrips();

    /**
     * 按主键查询指定景点封装到指定BEAN中
     * @return
     */
    TtTripSearchCustom getById(Long tripId);
}
