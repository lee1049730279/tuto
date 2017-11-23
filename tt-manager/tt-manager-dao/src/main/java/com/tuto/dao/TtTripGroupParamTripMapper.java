package com.tuto.dao;

import com.tuto.pojo.po.TtTripGroupParamTrip;
import com.tuto.pojo.po.TtTripGroupParamTripExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripGroupParamTripMapper {
    int countByExample(TtTripGroupParamTripExample example);

    int deleteByExample(TtTripGroupParamTripExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtTripGroupParamTrip record);

    int insertSelective(TtTripGroupParamTrip record);

    List<TtTripGroupParamTrip> selectByExampleWithBLOBs(TtTripGroupParamTripExample example);

    List<TtTripGroupParamTrip> selectByExample(TtTripGroupParamTripExample example);

    TtTripGroupParamTrip selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtTripGroupParamTrip record, @Param("example") TtTripGroupParamTripExample example);

    int updateByExampleWithBLOBs(@Param("record") TtTripGroupParamTrip record, @Param("example") TtTripGroupParamTripExample example);

    int updateByExample(@Param("record") TtTripGroupParamTrip record, @Param("example") TtTripGroupParamTripExample example);

    int updateByPrimaryKeySelective(TtTripGroupParamTrip record);

    int updateByPrimaryKeyWithBLOBs(TtTripGroupParamTrip record);

    int updateByPrimaryKey(TtTripGroupParamTrip record);
}