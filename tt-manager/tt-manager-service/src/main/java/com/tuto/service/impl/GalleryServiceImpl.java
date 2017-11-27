package com.tuto.service.impl;

import com.tuto.common.jedis.JedisClient;
import com.tuto.common.util.JsonUtils;
import com.tuto.dao.TtTripPictureMapper;
import com.tuto.pojo.po.TtTripPicture;
import com.tuto.pojo.po.TtTripPictureExample;

import com.tuto.service.GalleryService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GalleryServiceImpl implements GalleryService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtTripPictureMapper ttTripPictureDao;
    @Autowired
    private JedisClient jedisClient;
    @Override
    public List<TtTripPicture> listGallerysByTripId(Long tripId) {
        List<TtTripPicture> list = null;
        try {
            //查询缓存部分
            String json = jedisClient.hget("CONTENT_LIST", tripId + "");
            if(StringUtils.isNotBlank(json)){
                return JsonUtils.jsonToList(json,TtTripPicture.class);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        //主体业务部分
        //创建模板
        TtTripPictureExample example=new TtTripPictureExample();
        TtTripPictureExample.Criteria criteria=example.createCriteria();
        criteria.andTripIdEqualTo(Integer.parseInt(tripId.toString()));
        //执行查询
        list = ttTripPictureDao.selectByExample(example);
        //存入缓存部分
        try {
            jedisClient.hset("CONTENT_LIST",tripId+"", JsonUtils.objectToJson(list));
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }
}
