package com.tuto.dao;

import com.tuto.pojo.po.TtCommentPicture;
import com.tuto.pojo.po.TtCommentPictureExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtCommentPictureMapper {
    int countByExample(TtCommentPictureExample example);

    int deleteByExample(TtCommentPictureExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtCommentPicture record);

    int insertSelective(TtCommentPicture record);

    List<TtCommentPicture> selectByExample(TtCommentPictureExample example);

    TtCommentPicture selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtCommentPicture record, @Param("example") TtCommentPictureExample example);

    int updateByExample(@Param("record") TtCommentPicture record, @Param("example") TtCommentPictureExample example);

    int updateByPrimaryKeySelective(TtCommentPicture record);

    int updateByPrimaryKey(TtCommentPicture record);
}