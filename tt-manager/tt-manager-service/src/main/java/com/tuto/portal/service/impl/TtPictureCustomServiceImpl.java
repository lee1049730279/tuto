package com.tuto.portal.service.impl;

import com.tuto.common.jedis.JedisClient;
import com.tuto.common.util.JsonUtils;
import com.tuto.dao.TtPictureCustomMapper;
import com.tuto.pojo.vo.TtPictureCustom;
import com.tuto.portal.service.TtPictureCustomService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.*;

@Service
public class TtPictureCustomServiceImpl implements TtPictureCustomService {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private JedisClient jedisClient;
    @Autowired
    private TtPictureCustomMapper ttPictureCustomDao;
    @Override
    public List<TtPictureCustom> getPictureByGroupId(Integer groupId) {
        Map<String,TtPictureCustom>map=null;
        List<TtPictureCustom>list=new ArrayList<>();
        try {
            //查询缓存部分
            String json1 = jedisClient.hget("PICTURE_LIST1", groupId + "");
            if(StringUtils.isNotBlank(json1)){
                return JsonUtils.jsonToList(json1,TtPictureCustom.class);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        try {
            List<TtPictureCustom> pictureList = ttPictureCustomDao.getPictureByGroupId(groupId);
            map=new HashMap<>();
            for(int i=0;i<pictureList.size();i++){
                map.put(pictureList.get(i).getTripId(),pictureList.get(i));
            }
            Collection<TtPictureCustom> values = map.values();
            list.addAll(values);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        //存入缓存部分
        try {
            jedisClient.hset("PICTURE_LIST1",groupId+"", JsonUtils.objectToJson(list));
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<TtPictureCustom> getPictureByIndependentId(Integer independentId) {
        Map<String,TtPictureCustom>map=null;
        List<TtPictureCustom>list=new ArrayList<>();
        try {
            //查询缓存部分
            String json2 = jedisClient.hget("PICTURE_LIST2", independentId + "");
            if(StringUtils.isNotBlank(json2)){
                return JsonUtils.jsonToList(json2,TtPictureCustom.class);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        try {
            List<TtPictureCustom> pictureList = ttPictureCustomDao.getPictureByIndependentId(independentId);
            map=new HashMap<>();
            for(int i=0;i<pictureList.size();i++){
                map.put(pictureList.get(i).getTripId(),pictureList.get(i));
            }
            Collection<TtPictureCustom> values = map.values();
            list.addAll(values);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        //存入缓存部分
        try {
            jedisClient.hset("PICTURE_LIST2",independentId+"", JsonUtils.objectToJson(list));
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<TtPictureCustom> getPictureByThemeId() {
        Map<String,TtPictureCustom>map=null;
        List<TtPictureCustom>list=new ArrayList<>();
        try {
            //查询缓存部分
            String json3 = jedisClient.get("PICTURE_LIST3");
            if(StringUtils.isNotBlank(json3)){
                return JsonUtils.jsonToList(json3,TtPictureCustom.class);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        try {
            List<TtPictureCustom> pictureList = ttPictureCustomDao.getPictureByThemeId();
            map=new HashMap<>();
            for(int i=0;i<pictureList.size();i++){
                map.put(pictureList.get(i).getTripId(),pictureList.get(i));
            }
            Collection<TtPictureCustom> values = map.values();
            list.addAll(values);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        //存入缓存部分
        try {
            jedisClient.set("PICTURE_LIST3", JsonUtils.objectToJson(list));
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }
}
