package com.tuto.service.impl;

import com.tuto.dao.TtTripDetailMapper;
import com.tuto.dao.TtTripEditCustomMapper;
import com.tuto.dao.TtTripIndependentParamTripMapper;
import com.tuto.dao.TtTripMapper;
import com.tuto.pojo.po.*;
import com.tuto.pojo.vo.TtTripEditCustom;
import com.tuto.service.TripEditService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service
public class TripEditServiceImpl implements TripEditService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtTripEditCustomMapper ttTripEditCustomDao;
    @Autowired
    private TtTripMapper ttTripDao;
    @Autowired
    private TtTripDetailMapper ttTripDetailDao;
   /* @Autowired
    private TtTripGroupParamT*/
   @Autowired
   private TtTripIndependentParamTripMapper ttTripIndependentParamTripDao;
    //根据id查询景点，并将数据进行数据回显
    @Override
    public TtTripEditCustom findTripById(Long id) {
        TtTripEditCustom ttTripEditCustom=null;
        try {
            ttTripEditCustom=ttTripEditCustomDao.findTripById(id);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return ttTripEditCustom;
    }

    @Transactional
    @Override
    public int updateTrip(TtTrip ttTrip, TtTripDetail ttTripDetail, String paramData) {
        int count=0;
        try {
            //更新景点表
            TtTripExample example1=new TtTripExample();
            TtTripExample.Criteria criteria1=example1.createCriteria();
            criteria1.andIdEqualTo(ttTrip.getId());
            count+=ttTripDao.updateByExampleSelective(ttTrip,example1);

            //更新景点详情表
            TtTripDetailExample example2=new TtTripDetailExample();
            TtTripDetailExample.Criteria criteria2=example2.createCriteria();
            criteria2.andTripIdEqualTo(ttTrip.getId());
            count+=ttTripDetailDao.updateByExampleSelective(ttTripDetail,example2);

            //更新自助游景点规格表
            TtTripIndependentParamTrip ttTripIndependentParamTrip=new TtTripIndependentParamTrip();
            ttTripIndependentParamTrip.setUpdated(new Date());
            ttTripIndependentParamTrip.setParamData(paramData);
            TtTripIndependentParamTripExample example3=new TtTripIndependentParamTripExample();
            TtTripIndependentParamTripExample.Criteria criteria3=example3.createCriteria();
            criteria3.andTripIdEqualTo(ttTrip.getId());
            count+=ttTripIndependentParamTripDao.updateByExampleSelective(ttTripIndependentParamTrip,example3);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return count;
    }
}
