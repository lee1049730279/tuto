package com.tuto.dao;

import com.tuto.pojo.po.TtManager;
import com.tuto.pojo.po.TtManagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtManagerMapper {
    int countByExample(TtManagerExample example);

    int deleteByExample(TtManagerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtManager record);

    int insertSelective(TtManager record);

    List<TtManager> selectByExample(TtManagerExample example);

    TtManager selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtManager record, @Param("example") TtManagerExample example);

    int updateByExample(@Param("record") TtManager record, @Param("example") TtManagerExample example);

    int updateByPrimaryKeySelective(TtManager record);

    int updateByPrimaryKey(TtManager record);
}