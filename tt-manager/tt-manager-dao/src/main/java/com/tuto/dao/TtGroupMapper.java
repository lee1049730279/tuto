package com.tuto.dao;

import com.tuto.pojo.po.TtGroup;
import com.tuto.pojo.po.TtGroupExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtGroupMapper {
    int countByExample(TtGroupExample example);

    int deleteByExample(TtGroupExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtGroup record);

    int insertSelective(TtGroup record);

    List<TtGroup> selectByExample(TtGroupExample example);

    TtGroup selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtGroup record, @Param("example") TtGroupExample example);

    int updateByExample(@Param("record") TtGroup record, @Param("example") TtGroupExample example);

    int updateByPrimaryKeySelective(TtGroup record);

    int updateByPrimaryKey(TtGroup record);
}