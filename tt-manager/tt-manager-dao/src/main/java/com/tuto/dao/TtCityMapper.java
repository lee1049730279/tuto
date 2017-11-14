package com.tuto.dao;

import com.tuto.pojo.po.TtCity;
import com.tuto.pojo.po.TtCityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtCityMapper {
    int countByExample(TtCityExample example);

    int deleteByExample(TtCityExample example);

    int insert(TtCity record);

    int insertSelective(TtCity record);

    List<TtCity> selectByExample(TtCityExample example);

    int updateByExampleSelective(@Param("record") TtCity record, @Param("example") TtCityExample example);

    int updateByExample(@Param("record") TtCity record, @Param("example") TtCityExample example);
}