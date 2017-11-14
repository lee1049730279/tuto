package com.tuto.dao;

import com.tuto.pojo.po.TtTripIndependentParam;
import com.tuto.pojo.po.TtTripIndependentParamExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripIndependentParamMapper {
    int countByExample(TtTripIndependentParamExample example);

    int deleteByExample(TtTripIndependentParamExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtTripIndependentParam record);

    int insertSelective(TtTripIndependentParam record);

    List<TtTripIndependentParam> selectByExampleWithBLOBs(TtTripIndependentParamExample example);

    List<TtTripIndependentParam> selectByExample(TtTripIndependentParamExample example);

    TtTripIndependentParam selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtTripIndependentParam record, @Param("example") TtTripIndependentParamExample example);

    int updateByExampleWithBLOBs(@Param("record") TtTripIndependentParam record, @Param("example") TtTripIndependentParamExample example);

    int updateByExample(@Param("record") TtTripIndependentParam record, @Param("example") TtTripIndependentParamExample example);

    int updateByPrimaryKeySelective(TtTripIndependentParam record);

    int updateByPrimaryKeyWithBLOBs(TtTripIndependentParam record);

    int updateByPrimaryKey(TtTripIndependentParam record);
}