package com.tuto.dao;

import com.tuto.pojo.po.TtTheme;
import com.tuto.pojo.po.TtThemeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtThemeMapper {
    int countByExample(TtThemeExample example);

    int deleteByExample(TtThemeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtTheme record);

    int insertSelective(TtTheme record);

    List<TtTheme> selectByExample(TtThemeExample example);

    TtTheme selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtTheme record, @Param("example") TtThemeExample example);

    int updateByExample(@Param("record") TtTheme record, @Param("example") TtThemeExample example);

    int updateByPrimaryKeySelective(TtTheme record);

    int updateByPrimaryKey(TtTheme record);
}