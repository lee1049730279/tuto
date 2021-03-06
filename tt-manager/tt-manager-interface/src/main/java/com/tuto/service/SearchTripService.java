package com.tuto.service;


import com.tuto.pojo.vo.TtTripSearchResult;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 14:10
 * Version:V1.0
 */
public interface SearchTripService {
    /**
     * 将采集到的数据导入到索引库
     * @return
     */
    boolean importAllItems();
    /**
     * 带条件分页查询索引库的内容
     * @param keyword
     * @param page
     * @param i
     * @return
     */
    TtTripSearchResult search(String keyword, Integer page, int i);
}
