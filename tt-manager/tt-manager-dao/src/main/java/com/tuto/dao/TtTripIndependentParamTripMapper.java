package com.tuto.dao;

import com.tuto.pojo.po.TtTripIndependentParamTrip;
import com.tuto.pojo.po.TtTripIndependentParamTripExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripIndependentParamTripMapper {
    int countByExample(TtTripIndependentParamTripExample example);

    int deleteByExample(TtTripIndependentParamTripExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtTripIndependentParamTrip record);

    int insertSelective(TtTripIndependentParamTrip record);

    List<TtTripIndependentParamTrip> selectByExampleWithBLOBs(TtTripIndependentParamTripExample example);

    List<TtTripIndependentParamTrip> selectByExample(TtTripIndependentParamTripExample example);

    TtTripIndependentParamTrip selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtTripIndependentParamTrip record, @Param("example") TtTripIndependentParamTripExample example);

    int updateByExampleWithBLOBs(@Param("record") TtTripIndependentParamTrip record, @Param("example") TtTripIndependentParamTripExample example);

    int updateByExample(@Param("record") TtTripIndependentParamTrip record, @Param("example") TtTripIndependentParamTripExample example);

    int updateByPrimaryKeySelective(TtTripIndependentParamTrip record);

    int updateByPrimaryKeyWithBLOBs(TtTripIndependentParamTrip record);

    int updateByPrimaryKey(TtTripIndependentParamTrip record);
}