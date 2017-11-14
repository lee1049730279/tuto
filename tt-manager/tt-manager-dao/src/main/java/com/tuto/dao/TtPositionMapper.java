package com.tuto.dao;

import com.tuto.pojo.po.TtPosition;
import com.tuto.pojo.po.TtPositionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtPositionMapper {
    int countByExample(TtPositionExample example);

    int deleteByExample(TtPositionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtPosition record);

    int insertSelective(TtPosition record);

    List<TtPosition> selectByExample(TtPositionExample example);

    TtPosition selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtPosition record, @Param("example") TtPositionExample example);

    int updateByExample(@Param("record") TtPosition record, @Param("example") TtPositionExample example);

    int updateByPrimaryKeySelective(TtPosition record);

    int updateByPrimaryKey(TtPosition record);
}