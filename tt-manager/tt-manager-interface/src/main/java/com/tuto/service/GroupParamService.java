package com.tuto.service;

import com.tuto.pojo.po.TtTripGroupParam;

public interface GroupParamService {
    //将跟团游的规格参数详情显示到添加景点的页面
    TtTripGroupParam getGroupParamByGid(Long gid);
}
