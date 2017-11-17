package com.tuto.dao;


import com.tuto.pojo.vo.TtTripCustom;

import java.util.List;
import java.util.Map;

public interface TtTripCustomMapper {

    /**
     * 查询景点表中所有记录的数量
     * @param map   里面有一些参数 page（分页用的） order(排序用到，升序  降序)  query(查询条件)
     * @return
     */
    int countTrips(Map<String,Object> map);

    /**
     * 查询指定页码显示记录集合
     * @param map  里面有一些参数 page（分页用的） order(排序用到，升序  降序)  query(查询条件)
     * @return
     */
    List<TtTripCustom> listTripsByPage(Map<String,Object> map);
}