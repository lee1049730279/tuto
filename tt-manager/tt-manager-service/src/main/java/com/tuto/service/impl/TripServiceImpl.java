package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtTripCustomMapper;
import com.tuto.dao.TtTripMapper;
import com.tuto.pojo.po.TtTrip;
import com.tuto.pojo.po.TtTripExample;
import com.tuto.pojo.vo.TtTripCustom;
import com.tuto.pojo.vo.TtTripQuery;
import com.tuto.service.TripService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TripServiceImpl implements TripService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtTripMapper tripDao;
    @Autowired
    private TtTripCustomMapper tripCustomDao;


    @Override
    public Result<TtTripCustom> listTripsByPage(Page page, Order order, TtTripQuery query) {
        Result<TtTripCustom> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page",page);
            map.put("query",query);
            map.put("order",order);
            //1 创建一个响应参数实体类
            result = new Result<TtTripCustom>();
            //2 对total进行设值(符合条件的总记录数)
            int total = tripCustomDao.countTrips(map);
            result.setTotal(total);
            //3 对rows进行设值(指定页码显示记录集合)
            List<TtTripCustom> list = tripCustomDao.listTripsByPage(map);
            result.setRows(list);

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return result;
    }


    @Override
    public int updateBatch(List<Long> ids) {
        int i = 0;
        try {
            //准备商品对象，这个对象包含了状态为3的字段
            TtTrip record = new TtTrip();
            record.setState((int)3);
            //创建更新模板
            TtTripExample example = new TtTripExample();
            TtTripExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            //执行修改
            i = tripDao.updateByExampleSelective(record,example);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int updateDown(List<Long> ids) {
        int i = 0;
        try {
            //准备商品对象，这个对象包含了状态为3的字段
            TtTrip record = new TtTrip();
            record.setState((int)2);
            //创建更新模板
            TtTripExample example = new TtTripExample();
            TtTripExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            //执行修改
            i = tripDao.updateByExampleSelective(record,example);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int updateUp(List<Long> ids) {
        int i = 0;
        try {
            //准备商品对象，这个对象包含了状态为3的字段
            TtTrip record = new TtTrip();
            record.setState((int)1);
            //创建更新模板
            TtTripExample example = new TtTripExample();
            TtTripExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            //执行修改
            i = tripDao.updateByExampleSelective(record,example);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
