package com.tuto.service;

import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtTripParamCustom;

import java.util.List;

public interface TripParamService {
    Result<TtTripParamCustom> listTripParamsByPage(Page page);

    int updateParamBatch(List<Long> ids,List<Long> ofTypes);

    int saveParam(Long cid, int ofType, String paramData);
}
