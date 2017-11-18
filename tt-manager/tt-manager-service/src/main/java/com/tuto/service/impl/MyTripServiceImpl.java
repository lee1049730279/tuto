package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtPriceMapper;
import com.tuto.dao.TtpriceCustomMapper;
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
}
