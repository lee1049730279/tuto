package com.tuto.service.impl;

import com.tuto.common.util.JingWeiDuUtil;
import com.tuto.dao.*;
import com.tuto.pojo.po.*;
import com.tuto.service.TripAddService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Map;
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
    @Autowired
    private TtTripIndependentParamTripMapper ttTripIndependentParamTripDao;
    @Autowired
    private TtTripGroupParamTripMapper ttTripGroupParamTripDao;
    @Autowired
    private TtTripDetailedAddressMapper ttTripDetailedAddressDao;
    @Autowired
    private TtPositionMapper ttPositionDao;
    @Autowired
    private TtTripPictureMapper ttTripPictureDao;
    //添加景点
    @Transactional
    @Override
    public Long saveTrip(TtTrip ttTrip, Integer gid, Integer nid, TtTripDetail ttTripDetail, List<Integer> tids, String paramData, String detailedAddress) {
        Long tripId=null;
        int count=0;
        try {
            //调用经纬度工具获取景点的经纬度
            Map<String, Double> lngAndLat = JingWeiDuUtil.getLngAndLat(detailedAddress);
            //获得经度
            Double lng = lngAndLat.get("lng");
            //获得纬度
            Double lat = lngAndLat.get("lat");
            //添加景点坐标
            TtPosition ttPosition=new TtPosition();
            Random random=new Random();
            Long positionId=new Long( random.nextInt(999));
            ttPosition.setId(positionId);
            ttPosition.setP1(new Float(lng));
            ttPosition.setP2(new Float(lat));
            ttPosition.setLevel(1);
            count+=ttPositionDao.insert(ttPosition);
            //添加景点表
            ttTrip.setPositionId(positionId);
            if(gid!=null&&gid!=0){
                ttTrip.setType(1);
            }
            if(nid!=null&&nid!=0){
                ttTrip.setType(2);
            }
            ttTrip.setState(2);
            ttTripCustomDao.insert(ttTrip);
            //返回景点表的id值
            tripId = ttTrip.getId();
            System.out.println(tripId);
            //添加group和trip的中间表
            if(gid!=null&&gid!=0){
                TtTripGroup ttTripGroup=new TtTripGroup();
                int id = random.nextInt(10000);
                ttTripGroup.setId(id);
                ttTripGroup.setGroupId(gid);
                ttTripGroup.setTripId(tripId);
                count+= ttTripGroupDao.insert(ttTripGroup);
               if (paramData!=null&&paramData!=""){
                   TtTripGroupParamTrip ttTripGroupParamTrip=new TtTripGroupParamTrip();
                   ttTripGroupParamTrip.setTripId(tripId);
                   ttTripGroupParamTrip.setParamData(paramData);
                   ttTripGroupParamTrip.setCreated(new Date());
                   ttTripGroupParamTrip.setUpdated(new Date());
                   count+=ttTripGroupParamTripDao.insert(ttTripGroupParamTrip);
               }
            }

            //添加independent和trip的中间表
            if(nid!=null&&nid!=0){
                TtTripIndependent ttTripIndependent=new TtTripIndependent();
                int id = random.nextInt(10000);
                ttTripIndependent.setId(id);
                ttTripIndependent.setIndependentId(nid);
                ttTripIndependent.setTripId(tripId);
                count+=ttTripIndependentDao.insert(ttTripIndependent);
                if(paramData!=null&&paramData!=""){
                    TtTripIndependentParamTrip ttTripIndependentParamTrip=new TtTripIndependentParamTrip();
                    ttTripIndependentParamTrip.setTripId(tripId);
                    ttTripIndependentParamTrip.setParamData(paramData);
                    ttTripIndependentParamTrip.setCreated(new Date());
                    ttTripIndependentParamTrip.setUpdated(new Date());
                    count+=ttTripIndependentParamTripDao.insert(ttTripIndependentParamTrip);
                }
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
                //添加 tt_trip_picture表
                String placeIntroduce = ttTripDetail.getPlaceIntroduce();
                String title = StringUtils.substringBefore(placeIntroduce, "\" title");
                String s1 = StringUtils.substringAfter(title, "src=\"");
                if(StringUtils.isNotBlank(s1))
                {
                    TtTripPicture ttTripPicture=new TtTripPicture();
                    ttTripPicture.setImage(s1);
                    ttTripPicture.setTripId(Integer.parseInt(tripId.toString()));
                    ttTripPictureDao.insert(ttTripPicture);
                }
            }



            //添加标志性地点
            TtTripDetailedAddress ttTripDetailedAddress=new TtTripDetailedAddress();
           Long detailAddressId=new Long(random.nextInt(9999));
           ttTripDetailedAddress.setId(detailAddressId);
           ttTripDetailedAddress.setTripId(tripId);
            ttTripDetailedAddress.setDetailedAddress(detailedAddress);
            count+=ttTripDetailedAddressDao.insert(ttTripDetailedAddress);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return tripId;
    }
}
