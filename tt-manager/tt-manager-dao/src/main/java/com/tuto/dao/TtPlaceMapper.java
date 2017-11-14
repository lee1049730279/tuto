package com.tuto.dao;

import com.tuto.pojo.po.TtPlace;
import com.tuto.pojo.po.TtPlaceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtPlaceMapper {
    int countByExample(TtPlaceExample example);

    int deleteByExample(TtPlaceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtPlace record);

    int insertSelective(TtPlace record);

    List<TtPlace> selectByExample(TtPlaceExample example);

    TtPlace selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtPlace record, @Param("example") TtPlaceExample example);

    int updateByExample(@Param("record") TtPlace record, @Param("example") TtPlaceExample example);

    int updateByPrimaryKeySelective(TtPlace record);

    int updateByPrimaryKey(TtPlace record);
}