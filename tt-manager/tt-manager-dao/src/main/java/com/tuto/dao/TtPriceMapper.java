package com.tuto.dao;

import com.tuto.pojo.po.TtPrice;
import com.tuto.pojo.po.TtPriceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtPriceMapper {
    int countByExample(TtPriceExample example);

    int deleteByExample(TtPriceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TtPrice record);

    int insertSelective(TtPrice record);

    List<TtPrice> selectByExample(TtPriceExample example);

    TtPrice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TtPrice record, @Param("example") TtPriceExample example);

    int updateByExample(@Param("record") TtPrice record, @Param("example") TtPriceExample example);

    int updateByPrimaryKeySelective(TtPrice record);

    int updateByPrimaryKey(TtPrice record);
}