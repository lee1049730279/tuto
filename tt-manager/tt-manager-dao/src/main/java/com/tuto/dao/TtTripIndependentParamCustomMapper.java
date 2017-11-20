package com.tuto.dao;



import com.tuto.pojo.vo.TtTripParamCustom;

import java.util.List;
import java.util.Map;

public interface TtTripIndependentParamCustomMapper {

//    int countTripParams(Map<String, Object> map);
//
//    List<TtTripParamCustom> listTripParamsByPage(Map<String, Object> map);

    int countTripIndependentParams(Map<String, Object> map);

    List<TtTripParamCustom> listTripIndependentParamsByPage(Map<String, Object> map);
}