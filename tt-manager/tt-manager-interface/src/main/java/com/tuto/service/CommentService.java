package com.tuto.service;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.po.TtComment;
import com.tuto.pojo.vo.TtCommentQuery;

import java.util.List;

public interface CommentService {

    Result<TtComment> listComment(Page page,Order order, TtCommentQuery query);

    int removeBatch(List<Long> ids);
}
