package com.tuto.service.impl;

import com.tuto.dao.*;
import com.tuto.pojo.po.*;
import com.tuto.service.TripAddService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Random;

@Service
public class TripAddServiceImpl implements TripAddService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtTripMapperCustom ttTripCustomDao;
    @Autowired
    private TtTripGroupMapper ttTripGroupDao;
    @Autowired
    private TtTripIndependentMapper ttTripIndependentDao;
    @Autowired
    private TtTripDetailMapper ttTripDetailDao;
    @Autowired
    private  TtTripThemeMapper ttTripThemeDao;
    //添加景点
    @Transactional
    @Override
    public int saveTrip(TtTrip ttTrip, Integer gid, Integer nid, TtTripDetail ttTripDetail, List<Integer> tids) {
        int count=0;
        try {
            Random random=new Random();
            int positionId_ = random.nextInt(999);
            Long positionId=new Long(positionId_);
            ttTrip.setPositionId(positionId);
            ttTrip.setType(2);
            ttTrip.setState(2);
            //添加景点表
            ttTripCustomDao.insert(ttTrip);
            //返回景点表的id值
            Long tripId = ttTrip.getId();
            System.out.println(tripId);
            //添加group和trip的中间表
            if(gid!=null&&gid!=0){
                TtTripGroup ttTripGroup=new TtTripGroup();
                int id = random.nextInt(10000);
                ttTripGroup.setId(id);
                ttTripGroup.setGroupId(gid);
                ttTripGroup.setTripId(tripId);
                count+= ttTripGroupDao.insert(ttTripGroup);
            }

            //添加independent和trip的中间表
            if(nid!=null&&nid!=0){
                TtTripIndependent ttTripIndependent=new TtTripIndependent();
                int id = random.nextInt(10000);
                ttTripIndependent.setId(id);
                ttTripIndependent.setIndependentId(nid);
                ttTripIndependent.setTripId(tripId);
                count+=ttTripIndependentDao.insert(ttTripIndependent);
            }

            //添加theme和trip的中间表
            if(tids!=null&&tids.size()>0){
                for(int i=0;i<tids.size();i++){
                   TtTripTheme ttTripTheme=new TtTripTheme();
                   ttTripTheme.setThemeId(new Long(tids.get(i)));
                   ttTripTheme.setTripId(tripId);
                   count+=ttTripThemeDao.insert(ttTripTheme);
                }
            }

            //添加tt_trip_detail表
            if((ttTripDetail.getFoodIntroduce()!=null&&ttTripDetail.getFoodIntroduce()!="")||(ttTripDetail.getHotelIntroduce()!=null&&ttTripDetail.getFoodIntroduce()!="")||(ttTripDetail.getPlaceIntroduce()!=null&&ttTripDetail.getPlaceIntroduce()!="")){
                ttTripDetail.setTripId(tripId);
                count+= ttTripDetailDao.insert(ttTripDetail);
                System.out.println(count);
            }
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return count;
    }
}
