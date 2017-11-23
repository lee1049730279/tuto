package com.tuto.service.impl;

import com.tuto.common.util.JingWeiDuUtil;
import com.tuto.dao.*;
import com.tuto.pojo.po.*;
import com.tuto.pojo.vo.TtTripEditCustom;
import com.tuto.service.TripEditService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.Map;

@Service
public class TripEditServiceImpl implements TripEditService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtTripEditCustomMapper ttTripEditCustomDao;
    @Autowired
    private TtTripMapper ttTripDao;
    @Autowired
    private TtTripDetailMapper ttTripDetailDao;
   @Autowired
    private TtTripGroupParamTripMapper ttTripGroupParamTripDao;
   @Autowired
   private TtTripIndependentParamTripMapper ttTripIndependentParamTripDao;
    @Autowired
    TtTripDetailedAddressMapper ttTripDetailedAddressDao;
    @Autowired
    TtPositionMapper ttPositionDao;
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
    public int updateTrip(TtTrip ttTrip, TtTripDetail ttTripDetail, String paramData,String detailedAddress) {
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

            //更新跟团游景点规格表
            TtTripGroupParamTrip ttTripGroupParamTrip=new TtTripGroupParamTrip();
            ttTripGroupParamTrip.setUpdated(new Date());
            ttTripGroupParamTrip.setParamData(paramData);
            TtTripGroupParamTripExample example4=new TtTripGroupParamTripExample();
            TtTripGroupParamTripExample.Criteria criteria4=example4.createCriteria();
            criteria4.andTripIdEqualTo(ttTrip.getId());
            count+=ttTripGroupParamTripDao.updateByExampleSelective(ttTripGroupParamTrip,example4);

            //更新自助游景点规格表
            TtTripIndependentParamTrip ttTripIndependentParamTrip=new TtTripIndependentParamTrip();
            ttTripIndependentParamTrip.setUpdated(new Date());
            ttTripIndependentParamTrip.setParamData(paramData);
            TtTripIndependentParamTripExample example3=new TtTripIndependentParamTripExample();
            TtTripIndependentParamTripExample.Criteria criteria3=example3.createCriteria();
            criteria3.andTripIdEqualTo(ttTrip.getId());
            count+=ttTripIndependentParamTripDao.updateByExampleSelective(ttTripIndependentParamTrip,example3);

            //更新详细景点地址表
            TtTripDetailedAddress ttTripDetailedAddress=new TtTripDetailedAddress();
            TtTripDetailedAddressExample example5=new TtTripDetailedAddressExample();
            TtTripDetailedAddressExample.Criteria criteria5=example5.createCriteria();
            criteria5.andTripIdEqualTo(ttTrip.getId());
            count+=ttTripDetailedAddressDao.updateByExampleSelective(ttTripDetailedAddress,example5);

            //修改经纬度坐标表

            //调用经纬度工具获取景点的经纬度
            Map<String, Double> lngAndLat = JingWeiDuUtil.getLngAndLat(detailedAddress);
            //获得经度
            Double lng = lngAndLat.get("lng");
            //获得纬度
            Double lat = lngAndLat.get("lat");
            //添加景点坐标
            TtPosition ttPosition=new TtPosition();
            ttPosition.setP1(new Float(lng));
            ttPosition.setP2(new Float(lat));
            TtPositionExample example6=new TtPositionExample();
            TtPositionExample.Criteria criteria=example6.createCriteria();
            criteria.andIdEqualTo(ttTrip.getPositionId());
            count+=ttPositionDao.updateByExampleSelective(ttPosition,example6);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return count;
    }
}
