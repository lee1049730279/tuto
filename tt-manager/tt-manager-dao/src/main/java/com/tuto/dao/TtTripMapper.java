package com.tuto.dao;

import com.tuto.pojo.po.TtTrip;
import com.tuto.pojo.po.TtTripExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripMapper {
    int countByExample(TtTripExample example);

    int deleteByExample(TtTripExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtTrip record);

    int insertSelective(TtTrip record);

    List<TtTrip> selectByExample(TtTripExample example);

    TtTrip selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtTrip record, @Param("example") TtTripExample example);

    int updateByExample(@Param("record") TtTrip record, @Param("example") TtTripExample example);

    int updateByPrimaryKeySelective(TtTrip record);

    int updateByPrimaryKey(TtTrip record);
}