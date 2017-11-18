package com.tuto.web;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtTripCustom;
import com.tuto.pojo.vo.TtTripQuery;
import com.tuto.service.TripService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@Scope("prototype")
public class TripAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TripService tripService;


    //列表分页查询
    @ResponseBody
    @RequestMapping("/trips")
    public Result<TtTripCustom> listTripsByPage(Page page, Order order, TtTripQuery query){
        Result<TtTripCustom> list = null;
        try {
            list = tripService.listTripsByPage(page,order,query);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

    //商品列表删除功能  其实只是修改状态，不是真的删除
    @ResponseBody
    @RequestMapping("/trip/batch")
    public int updateBatch(@RequestParam("ids[]") List<Long> ids){
        int i = 0;
        try {
            i = tripService.updateBatch(ids);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    //商品列表下架功能
    @ResponseBody
    @RequestMapping(value = "/trip/down",method = RequestMethod.POST)
    public int updateDown(@RequestParam("ids[]") List<Long> ids){
        int i = 0;
        try {
            i = tripService.updateDown(ids);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }


    //商品列表上架功能
    @ResponseBody
    @RequestMapping(value = "/trip/up",method = RequestMethod.POST)
    public int updateUp(@RequestParam("ids[]") List<Long> ids){
        int i = 0;
        try {
            i = tripService.updateUp(ids);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
