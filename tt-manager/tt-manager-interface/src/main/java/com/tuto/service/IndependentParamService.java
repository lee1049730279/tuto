package com.tuto.service;

import com.tuto.pojo.po.TtTripIndependentParam;

public interface IndependentParamService {
     //将自助游的规格参数详情显示到添加景点的页面
     TtTripIndependentParam getIndependentParamByNid(Long nid);
}
