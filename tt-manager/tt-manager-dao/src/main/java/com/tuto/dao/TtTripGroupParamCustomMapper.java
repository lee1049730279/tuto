package com.tuto.dao;



import com.tuto.pojo.vo.TtTripParamCustom;

import java.util.List;
import java.util.Map;

public interface TtTripGroupParamCustomMapper {

    int countTripGroupParams(Map<String, Object> map);

    List<TtTripParamCustom> listTripGroupParamsByPage(Map<String, Object> map);

}