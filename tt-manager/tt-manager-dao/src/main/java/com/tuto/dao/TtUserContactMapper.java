package com.tuto.dao;

import com.tuto.pojo.po.TtUserContact;
import com.tuto.pojo.po.TtUserContactExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtUserContactMapper {
    int countByExample(TtUserContactExample example);

    int deleteByExample(TtUserContactExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtUserContact record);

    int insertSelective(TtUserContact record);

    List<TtUserContact> selectByExample(TtUserContactExample example);

    TtUserContact selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtUserContact record, @Param("example") TtUserContactExample example);

    int updateByExample(@Param("record") TtUserContact record, @Param("example") TtUserContactExample example);

    int updateByPrimaryKeySelective(TtUserContact record);

    int updateByPrimaryKey(TtUserContact record);
}