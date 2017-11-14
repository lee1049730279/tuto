package com.tuto.dao;

import com.tuto.pojo.po.TtOrderContact;
import com.tuto.pojo.po.TtOrderContactExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtOrderContactMapper {
    int countByExample(TtOrderContactExample example);

    int deleteByExample(TtOrderContactExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtOrderContact record);

    int insertSelective(TtOrderContact record);

    List<TtOrderContact> selectByExample(TtOrderContactExample example);

    TtOrderContact selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtOrderContact record, @Param("example") TtOrderContactExample example);

    int updateByExample(@Param("record") TtOrderContact record, @Param("example") TtOrderContactExample example);

    int updateByPrimaryKeySelective(TtOrderContact record);

    int updateByPrimaryKey(TtOrderContact record);
}