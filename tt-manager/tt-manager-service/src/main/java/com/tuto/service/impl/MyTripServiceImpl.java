package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtPriceMapper;
import com.tuto.dao.TtpriceCustomMapper;
import com.tuto.pojo.po.TtPrice;
import com.tuto.pojo.po.TtPriceExample;
import com.tuto.pojo.vo.TtPriceCustom;
import com.tuto.pojo.vo.TtPriceQuery;
import com.tuto.service.MyTripService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/17
 * Time: 19:18
 * Version:V1.0
 */
@Service
public class MyTripServiceImpl implements MyTripService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtpriceCustomMapper ttpriceCustomdao;

    @Autowired
    private TtPriceMapper ttPricedao;

    @Override
    public Result<TtPriceCustom> listPrice(Page page, Order order, TtPriceQuery ttPriceQuery) {
        Result<TtPriceCustom> result = null;
        try {
            result = new Result<>();
            int total = ttpriceCustomdao.count(ttPriceQuery);
            result.setTotal(total);
            List<TtPriceCustom> list=ttpriceCustomdao.listPrice(page,order,ttPriceQuery);
            result.setRows(list);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int changePrice(List<Integer> ids,Float price) {

        int i=0;
        try {
            TtPrice ttPrice = new TtPrice();
            ttPrice.setPrice(price);
            TtPriceExample example = new TtPriceExample();
            TtPriceExample.Criteria criteria=example.createCriteria();
            criteria.andIdIn(ids);
            i=ttPricedao.updateByExampleSelective(ttPrice,example);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
}
