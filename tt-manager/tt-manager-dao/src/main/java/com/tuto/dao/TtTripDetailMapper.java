package com.tuto.dao;

import com.tuto.pojo.po.TtTripDetail;
import com.tuto.pojo.po.TtTripDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripDetailMapper {
    int countByExample(TtTripDetailExample example);

    int deleteByExample(TtTripDetailExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtTripDetail record);

    int insertSelective(TtTripDetail record);

    List<TtTripDetail> selectByExample(TtTripDetailExample example);

    TtTripDetail selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtTripDetail record, @Param("example") TtTripDetailExample example);

    int updateByExample(@Param("record") TtTripDetail record, @Param("example") TtTripDetailExample example);

    int updateByPrimaryKeySelective(TtTripDetail record);

    int updateByPrimaryKey(TtTripDetail record);
}