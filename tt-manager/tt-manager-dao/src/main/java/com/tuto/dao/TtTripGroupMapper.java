package com.tuto.dao;

import com.tuto.pojo.po.TtTripGroup;
import com.tuto.pojo.po.TtTripGroupExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripGroupMapper {
    int countByExample(TtTripGroupExample example);

    int deleteByExample(TtTripGroupExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtTripGroup record);

    int insertSelective(TtTripGroup record);

    List<TtTripGroup> selectByExample(TtTripGroupExample example);

    TtTripGroup selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtTripGroup record, @Param("example") TtTripGroupExample example);

    int updateByExample(@Param("record") TtTripGroup record, @Param("example") TtTripGroupExample example);

    int updateByPrimaryKeySelective(TtTripGroup record);

    int updateByPrimaryKey(TtTripGroup record);
}