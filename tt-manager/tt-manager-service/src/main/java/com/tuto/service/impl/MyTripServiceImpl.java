package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.common.dto.TreeNode;
import com.tuto.dao.TtPriceMapper;
import com.tuto.dao.TtTripMapper;
import com.tuto.dao.TtpriceCustomMapper;
import com.tuto.pojo.po.*;
import com.tuto.pojo.vo.TtPriceCustom;
import com.tuto.pojo.vo.TtPriceQuery;
import com.tuto.service.MyTripService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    @Autowired
    private TtTripMapper ttTripdao;
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

    @Override
    public List<TreeNode> tripPriceId() {
        List<TreeNode> treeNodeList = new ArrayList<>();
        try {
            //获得group类型景点
            List<TtTrip> ttTrips = ttTripdao.selectByExample(null);

            for(int i=0;i<ttTrips.size();i++){
                TtTrip ttTrip= ttTrips.get(i);
                TreeNode treeNode= new TreeNode();
                treeNode.setId(ttTrip.getId());
                treeNode.setState("open");
                treeNode.setText(ttTrip.getTitle());
                treeNodeList.add(treeNode);
            }

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }

    @Override
    public int priceAdd(TtPrice ttPrice) {
        int i=0;
        try {
            i=ttPricedao.insert(ttPrice);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
}
