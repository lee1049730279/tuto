package com.tuto.dao;

import com.tuto.pojo.po.TtIndependent;
import com.tuto.pojo.po.TtIndependentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtIndependentMapper {
    int countByExample(TtIndependentExample example);

    int deleteByExample(TtIndependentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtIndependent record);

    int insertSelective(TtIndependent record);

    List<TtIndependent> selectByExample(TtIndependentExample example);

    TtIndependent selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtIndependent record, @Param("example") TtIndependentExample example);

    int updateByExample(@Param("record") TtIndependent record, @Param("example") TtIndependentExample example);

    int updateByPrimaryKeySelective(TtIndependent record);

    int updateByPrimaryKey(TtIndependent record);
}