package com.tuto.service;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtTripCustom;
import com.tuto.pojo.vo.TtTripQuery;

import java.util.List;

public interface TripService {
    /**
     * 查询景点
     * @param page  用于分页，里面有page：当前页  rows:一页的记录条数  还有一个getOffset()
     * @param order  用于排序，里面有sort:按什么排序，如title  order:升序还是降序
     * @param query  搜索条件
     * @return
     */
    Result<TtTripCustom> listTripsByPage(Page page, Order order, TtTripQuery query);

    /**
     * 删除景点  不是真的删除，是改变状态
     * @param ids  这是批量删除，可以删除多个，ids存了要删除的所有景点的id
     * @return
     */
    int updateBatch(List<Long> ids);

    /**
     * 景点下架  改变状态
     * @param ids  这是批量改变，可以改变多个，ids存了要改变的所有景点的id
     * @return
     */
    int updateDown(List<Long> ids);

    /**
     * 景点上架  改变状态
     * @param ids  这是批量改变，可以改变多个，ids存了要改变的所有景点的id
     * @return
     */
    int updateUp(List<Long> ids);
}
