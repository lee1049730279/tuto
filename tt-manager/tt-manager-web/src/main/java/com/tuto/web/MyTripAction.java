package com.tuto.web;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.common.dto.TreeNode;
import com.tuto.pojo.po.TtPrice;
import com.tuto.pojo.vo.TtPriceCustom;
import com.tuto.pojo.vo.TtPriceQuery;
import com.tuto.service.MyTripService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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

    @ResponseBody
    @RequestMapping("changePrice")
    public int changePrice(@RequestParam("ids[]")List<Integer> ids, Float price){
        System.out.println(ids);
        int i=0;
        try {
           i= myTripService.changePrice(ids,price);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
    @ResponseBody
    @RequestMapping("tripPriceId")
    public List<TreeNode> tripPriceId(){
        List<TreeNode> treeNodeList = null;
        try {
            treeNodeList = myTripService.tripPriceId();
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }
    @ResponseBody
    @RequestMapping("priceAdd")
    public  int priceAdd(TtPrice ttPrice){
        int i=0;
        try {
            i= myTripService.priceAdd(ttPrice);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }




}
