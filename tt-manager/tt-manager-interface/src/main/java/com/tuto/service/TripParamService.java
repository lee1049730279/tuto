package com.tuto.service;

import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtTripParamCustom;

import java.util.List;

public interface TripParamService {
    Result<TtTripParamCustom> listTripParamsByPage(Page page);

    int updateParamBatch(List<Object> idAndOfType);
}
