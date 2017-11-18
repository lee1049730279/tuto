package com.tuto.web;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtPriceCustom;
import com.tuto.pojo.vo.TtPriceQuery;
import com.tuto.service.MyTripService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: jack
 * Date: 2017/11/17
 * Time: 19:03
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class MyTripAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MyTripService  myTripService;

    @ResponseBody
    @RequestMapping("/MyTrip")
    public Result<TtPriceCustom> listPrice(Page page, Order order,TtPriceQuery ttPriceQuery){

        Result<TtPriceCustom> result = null;
        try {
            result= myTripService.listPrice(page,order,ttPriceQuery);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;

    }
}
