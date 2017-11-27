package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtOrdersCustomMapper;
import com.tuto.dao.TtOrdersMapper;
import com.tuto.dao.TtUserContactCustomMapper;
import com.tuto.pojo.po.TtOrders;
import com.tuto.pojo.po.TtOrdersExample;
import com.tuto.pojo.po.TtUserContact;
import com.tuto.pojo.vo.TtOrderQuery;
import com.tuto.pojo.vo.TtOrdersCustom;
import com.tuto.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    @Autowired
    private TtUserContactCustomMapper ttUserContactCustomdao;

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
    public List<TtUserContact> checkUserContact(List<Long> ids) {
        List<TtUserContact> result=null;
        try{
            result =new ArrayList<>();
            for(int i=0;i<ids.size();i=i+2){
                Long oid = ids.get(i);
                Long uid = ids.get(i+1);
                result= ttUserContactCustomdao.findttUserContact(oid,uid);
            }
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<TtOrdersCustom> listOrdersById(Long uid) {
        List<TtOrdersCustom> list=null;
        try{
            list=ttOrdersCustomdao.listOrdersByIdAndState(uid);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public TtOrdersCustom ordersById(Long id) {
        TtOrdersCustom ttOrdersCustom=new TtOrdersCustom();
        try{
            ttOrdersCustom= ttOrdersCustomdao.findById(id);
            Long uid = ttOrdersCustom.getUserId();

            ttOrdersCustom.setUserContact(ttUserContactCustomdao.findttUserContact(id,uid));


        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return ttOrdersCustom;
    }

    @Override
    public Result<TtOrdersCustom> listOrders(Page page, Order order, TtOrderQuery ttOrderQuery) {

        Result<TtOrdersCustom> list = null;

        try {
            list= new Result<>();
            int total = ttOrdersCustomdao.countitem(ttOrderQuery);

            list.setTotal(total);
            List<TtOrdersCustom> ordersCustomslist= ttOrdersCustomdao.listOrders(page,order,ttOrderQuery);

            List<TtUserContact> result=null;
            for(int i=0;i<ordersCustomslist.size();i++) {
                Long oid = ordersCustomslist.get(i).getId();
                Long uid = ordersCustomslist.get(i).getUserId();
                result = ttUserContactCustomdao.findttUserContact(oid, uid);
                ordersCustomslist.get(i).setUserContact(result);
            }
            list.setRows(ordersCustomslist);




        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;


    }

    @Override
    public int updateByid(Long id) {
        int i=0;
        try {
            TtOrders ttOrders = new TtOrders();
            ttOrders.setState(3);
            TtOrdersExample example = new TtOrdersExample();
            TtOrdersExample.Criteria criteria = example.createCriteria();
            criteria.andIdEqualTo(id);
            i = ttOrdersdao.updateByExampleSelective(ttOrders, example);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
}
