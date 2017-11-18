package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtCommentCustomMapper;
import com.tuto.dao.TtCommentMapper;
import com.tuto.pojo.po.TtComment;
import com.tuto.pojo.po.TtCommentExample;
import com.tuto.pojo.vo.TtCommentQuery;
import com.tuto.service.CommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtCommentCustomMapper ttCommentCustomMapper;

    @Autowired
    private TtCommentMapper ttCommentMapper;



    @Override
    public Result<TtComment> listComment(Page page, Order order, TtCommentQuery query) {
        Result<TtComment> result = null;
        try {
            //分页查询
            List<TtComment> list = ttCommentCustomMapper.listComment(page,order,query);
            //查询记录条数
            int count = ttCommentCustomMapper.countComments(query);
            //存入result
            result = new Result<>();
            result.setTotal(count);
            result.setRows(list);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public int removeBatch(List<Long> ids) {
        int i = 0;
        try {
            TtCommentExample example = new TtCommentExample();
            TtCommentExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = ttCommentMapper.deleteByExample(example);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
}
