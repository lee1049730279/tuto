package com.tuto.dao;

import com.tuto.pojo.po.TtTripPicture;
import com.tuto.pojo.po.TtTripPictureExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtTripPictureMapper {
    int countByExample(TtTripPictureExample example);

    int deleteByExample(TtTripPictureExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtTripPicture record);

    int insertSelective(TtTripPicture record);

    List<TtTripPicture> selectByExample(TtTripPictureExample example);

    TtTripPicture selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtTripPicture record, @Param("example") TtTripPictureExample example);

    int updateByExample(@Param("record") TtTripPicture record, @Param("example") TtTripPictureExample example);

    int updateByPrimaryKeySelective(TtTripPicture record);

    int updateByPrimaryKey(TtTripPicture record);
}