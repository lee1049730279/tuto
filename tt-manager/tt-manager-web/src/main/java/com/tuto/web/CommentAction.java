package com.tuto.web;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.po.TtComment;
import com.tuto.pojo.vo.TtCommentQuery;
import com.tuto.service.CommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CommentAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private CommentService commentService;

    @RequestMapping("/comments")
    @ResponseBody
    public Result<TtComment> listComments(Page page, Order order, TtCommentQuery query){
        Result<TtComment> result = null;
        try {
            result = commentService.listComment(page,order,query);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("/comments/batch")
    @ResponseBody
    public int removeBatch(@RequestParam("ids[]") List<Long> ids){
       int i = 0;
       try {
           i =  commentService.removeBatch(ids);
       }catch (Exception e){
           logger.error(e.getMessage(),e);
           e.printStackTrace();
       }
       return i;
    }
}
