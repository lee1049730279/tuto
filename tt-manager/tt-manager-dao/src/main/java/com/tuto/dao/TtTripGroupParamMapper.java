package com.tuto.dao;

import com.tuto.pojo.po.TtTripGroupParam;
import com.tuto.pojo.po.TtTripGroupParamExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripGroupParamMapper {
    int countByExample(TtTripGroupParamExample example);

    int deleteByExample(TtTripGroupParamExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtTripGroupParam record);

    int insertSelective(TtTripGroupParam record);

    List<TtTripGroupParam> selectByExampleWithBLOBs(TtTripGroupParamExample example);

    List<TtTripGroupParam> selectByExample(TtTripGroupParamExample example);

    TtTripGroupParam selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtTripGroupParam record, @Param("example") TtTripGroupParamExample example);

    int updateByExampleWithBLOBs(@Param("record") TtTripGroupParam record, @Param("example") TtTripGroupParamExample example);

    int updateByExample(@Param("record") TtTripGroupParam record, @Param("example") TtTripGroupParamExample example);

    int updateByPrimaryKeySelective(TtTripGroupParam record);

    int updateByPrimaryKeyWithBLOBs(TtTripGroupParam record);

    int updateByPrimaryKey(TtTripGroupParam record);
}