package com.tuto.dao;

import com.tuto.pojo.po.TtTripDetailedAddress;
import com.tuto.pojo.po.TtTripDetailedAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripDetailedAddressMapper {
    int countByExample(TtTripDetailedAddressExample example);

    int deleteByExample(TtTripDetailedAddressExample example);

    int insert(TtTripDetailedAddress record);

    int insertSelective(TtTripDetailedAddress record);

    List<TtTripDetailedAddress> selectByExample(TtTripDetailedAddressExample example);

    int updateByExampleSelective(@Param("record") TtTripDetailedAddress record, @Param("example") TtTripDetailedAddressExample example);

    int updateByExample(@Param("record") TtTripDetailedAddress record, @Param("example") TtTripDetailedAddressExample example);
}