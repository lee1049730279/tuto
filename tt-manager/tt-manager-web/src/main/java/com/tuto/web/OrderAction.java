package com.tuto.web;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.po.TtUserContact;
import com.tuto.pojo.vo.TtOrderQuery;
import com.tuto.pojo.vo.TtOrdersCustom;
import com.tuto.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/16
 * Time: 21:21
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class OrderAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());


    @Autowired
    private OrderService orderservice;


    @ResponseBody
    @RequestMapping("/orders")
    public Result<TtOrdersCustom> listOrders(Page page, Order order, TtOrderQuery ttOrderQuery){
        Result<TtOrdersCustom> list = null;

        try {
            list= orderservice.listOrders(page,order,ttOrderQuery);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }

    @ResponseBody
    @RequestMapping(value="orders/update/{state}")
    public int updateOrderSstate(@RequestParam("ids[]") List<Long> ids,@PathVariable("state")Integer state){
        System.out.println(state);
        int i=0;
        try{
           i= orderservice.updateOrderSstate(ids,state);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping(value="orders/userContact")
    public List<TtUserContact> checkUserContact(@RequestParam("ids[]") List<Long> ids){

        List<TtUserContact> result=null;
        try{
            result= orderservice.checkUserContact(ids);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }


}
