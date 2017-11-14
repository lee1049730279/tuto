package com.tuto.dao;

import com.tuto.pojo.po.TtTripIndependent;
import com.tuto.pojo.po.TtTripIndependentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripIndependentMapper {
    int countByExample(TtTripIndependentExample example);

    int deleteByExample(TtTripIndependentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtTripIndependent record);

    int insertSelective(TtTripIndependent record);

    List<TtTripIndependent> selectByExample(TtTripIndependentExample example);

    TtTripIndependent selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtTripIndependent record, @Param("example") TtTripIndependentExample example);

    int updateByExample(@Param("record") TtTripIndependent record, @Param("example") TtTripIndependentExample example);

    int updateByPrimaryKeySelective(TtTripIndependent record);

    int updateByPrimaryKey(TtTripIndependent record);
}