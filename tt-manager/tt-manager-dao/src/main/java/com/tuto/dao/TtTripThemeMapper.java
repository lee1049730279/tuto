package com.tuto.dao;

import com.tuto.pojo.po.TtTripTheme;
import com.tuto.pojo.po.TtTripThemeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripThemeMapper {
    int countByExample(TtTripThemeExample example);

    int deleteByExample(TtTripThemeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtTripTheme record);

    int insertSelective(TtTripTheme record);

    List<TtTripTheme> selectByExample(TtTripThemeExample example);

    TtTripTheme selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtTripTheme record, @Param("example") TtTripThemeExample example);

    int updateByExample(@Param("record") TtTripTheme record, @Param("example") TtTripThemeExample example);

    int updateByPrimaryKeySelective(TtTripTheme record);

    int updateByPrimaryKey(TtTripTheme record);
}