package com.tuto.dao;

import com.tuto.pojo.po.TtComment;
import com.tuto.pojo.po.TtCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtCommentMapper {
    int countByExample(TtCommentExample example);

    int deleteByExample(TtCommentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtComment record);

    int insertSelective(TtComment record);

    List<TtComment> selectByExample(TtCommentExample example);

    TtComment selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtComment record, @Param("example") TtCommentExample example);

    int updateByExample(@Param("record") TtComment record, @Param("example") TtCommentExample example);

    int updateByPrimaryKeySelective(TtComment record);

    int updateByPrimaryKey(TtComment record);
}