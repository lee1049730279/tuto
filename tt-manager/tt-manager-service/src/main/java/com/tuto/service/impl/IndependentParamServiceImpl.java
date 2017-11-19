package com.tuto.service.impl;

import com.tuto.dao.TtTripIndependentParamMapper;
import com.tuto.pojo.po.TtTripIndependentParam;
import com.tuto.pojo.po.TtTripIndependentParamExample;
import com.tuto.service.IndependentParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndependentParamServiceImpl implements IndependentParamService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtTripIndependentParamMapper ttTripIndependentParamDao;

    //将自助游的规格参数详情显示到添加景点的页面
    @Override
    public TtTripIndependentParam getIndependentParamByNid(Long nid) {
        TtTripIndependentParam ttTripIndependentParam=null;
        try {
            TtTripIndependentParamExample example=new TtTripIndependentParamExample();
            TtTripIndependentParamExample.Criteria criteria=example.createCriteria();
            criteria.andTtIndependentIdEqualTo(nid);

            List<TtTripIndependentParam> list = ttTripIndependentParamDao.selectByExampleWithBLOBs(example);
            if(list !=null && list.size()>0){
                ttTripIndependentParam = list.get(0);
            }
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return ttTripIndependentParam;
    }
}
