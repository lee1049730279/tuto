package com.tuto.portal.web;

import com.tuto.pojo.vo.TtOrdersCustom;
import com.tuto.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * User: jack
 * Date: 2017/11/25
 * Time: 17:24
 * Version:V1.0
 */
@Controller
public class OrderAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OrderService orderService;


    @RequestMapping("Orders")
    public String getOrdersByID(Long uid, HttpServletRequest request) {
        List<TtOrdersCustom> list=null;
        try{
            list = orderService.listOrdersById(uid);
            request.setAttribute("OredersAllList",list);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }


        return "order";
    }
    @RequestMapping("Orders/pay")
    public String getOrdersByID(HttpServletRequest request,Long id) {
        int i =0;
        try{
            i=orderService.updateByid(id);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }


        return "ordersPay";
    }



}
