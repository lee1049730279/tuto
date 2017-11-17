package com.tuto.service;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtTripCustom;
import com.tuto.pojo.vo.TtTripQuery;

import java.util.List;

public interface TripService {
    Result<TtTripCustom> listTripsByPage(Page page, Order order, TtTripQuery query);

    int updateBatch(List<Long> ids);

    int updateDown(List<Long> ids);

    int updateUp(List<Long> ids);
}
