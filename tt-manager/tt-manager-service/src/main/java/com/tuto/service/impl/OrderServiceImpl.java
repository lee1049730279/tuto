package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtOrdersCustomMapper;
import com.tuto.dao.TtOrdersMapper;
import com.tuto.pojo.po.TtOrders;
import com.tuto.pojo.po.TtOrdersExample;
import com.tuto.pojo.vo.TtOrderQuery;
import com.tuto.pojo.vo.TtOrdersCustom;
import com.tuto.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/16
 * Time: 21:41
 * Version:V1.0
 */
@Service
public class OrderServiceImpl implements OrderService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtOrdersCustomMapper ttOrdersCustomdao;
    @Autowired
    private TtOrdersMapper ttOrdersdao;

    @Override
    public int updateOrderSstate(List<Long> ids, Integer state) {
        int i=0;
        try{
            TtOrders ttOrders=new TtOrders();
            ttOrders.setState(state);
            TtOrdersExample example=new TtOrdersExample();
            TtOrdersExample.Criteria criteria= example.createCriteria();
            criteria.andIdIn(ids);
             i= ttOrdersdao.updateByExampleSelective(ttOrders,example);
             System.out.println(i);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public Result<TtOrdersCustom> listOrders(Page page, Order order, TtOrderQuery ttOrderQuery) {

        Result<TtOrdersCustom> list = null;

        try {
            list= new Result<>();
            int total = ttOrdersCustomdao.countitem(ttOrderQuery);

            list.setTotal(total);
            List<TtOrdersCustom> ordersCustomslist= ttOrdersCustomdao.listOrders(page,order,ttOrderQuery);
            list.setRows(ordersCustomslist);


        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;


    }
}
