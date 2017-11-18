package com.tuto.dao;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.pojo.po.TtComment;
import com.tuto.pojo.vo.TtCommentQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TtCommentCustomMapper {

    List<TtComment> listComment(@Param("page") Page page, @Param("order") Order order,@Param("query") TtCommentQuery query);

    int countComments(@Param("query")TtCommentQuery query);
}
