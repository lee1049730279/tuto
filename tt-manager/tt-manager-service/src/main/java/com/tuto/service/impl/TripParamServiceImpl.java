package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtTripGroupParamCustomMapper;
import com.tuto.dao.TtTripGroupParamMapper;
import com.tuto.dao.TtTripIndependentParamCustomMapper;
import com.tuto.dao.TtTripIndependentParamMapper;
import com.tuto.pojo.po.TtTripGroupParam;
import com.tuto.pojo.po.TtTripGroupParamExample;
import com.tuto.pojo.po.TtTripIndependentParam;
import com.tuto.pojo.po.TtTripIndependentParamExample;
import com.tuto.pojo.vo.TtTripParamCustom;
import com.tuto.service.TripParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TripParamServiceImpl implements TripParamService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtTripGroupParamCustomMapper tripGroupParamCustomDao;
    @Autowired
    private TtTripIndependentParamCustomMapper ttTripIndependentParamCustomDao;
    @Autowired
    private TtTripGroupParamMapper ttTripGroupParamDao;
    @Autowired
    private TtTripIndependentParamMapper ttTripIndependentParamDao;


    @Override
    public Result<TtTripParamCustom> listTripParamsByPage(Page page, Order order, int ofType) {
        Result<TtTripParamCustom> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page",page);
            map.put("order",order);
            result = new Result<TtTripParamCustom>();
            List<TtTripParamCustom> list = null;
            if(ofType == 1){
                int total = tripGroupParamCustomDao.countTripGroupParams(map);
                result.setTotal(total);
                list = tripGroupParamCustomDao.listTripGroupParamsByPage(map);
                for(int i=0; i<list.size(); i++){
                    list.get(i).setOfType(1);
                }
            }else if(ofType == 2){
                int total = ttTripIndependentParamCustomDao.countTripIndependentParams(map);
                result.setTotal(total);
                list = ttTripIndependentParamCustomDao.listTripIndependentParamsByPage(map);
                for(int i=0; i<list.size(); i++){
                    list.get(i).setOfType(2);
                }
            }

            result.setRows(list);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }


    //删除
    @Override
    public int removeParamBatch(List<Long> ids,List<Long> ofTypes) {
        int i = 0;
        try {
            for(int j=0; j<ids.size(); j++){
                if(1 == ofTypes.get(j)){
                    ttTripGroupParamDao.deleteByPrimaryKey(ids.get(j));
                }else if(2 == ofTypes.get(j)){
                    ttTripIndependentParamDao.deleteByPrimaryKey(ids.get(j));
                }
            }
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int saveParam(Long cid, int ofType, String paramData) {
        int i = 0;
        try {
            //是跟团游中的类目  存到跟团游规格表 tt_trip_group_param
           if(1 == ofType){
               TtTripGroupParam ttTripGroupParam = new TtTripGroupParam();
               ttTripGroupParam.setTtGroupId(cid);
               ttTripGroupParam.setParamData(paramData);
               ttTripGroupParam.setCreated(new Date());
               ttTripGroupParam.setUpdated(new Date());
               i = ttTripGroupParamDao.insert(ttTripGroupParam);
           }else if(2 == ofType){ //是自助游中的类目  存到自助游规格表 tt_trip_independent_param
               TtTripIndependentParam ttTripIndependentParam = new TtTripIndependentParam();
               ttTripIndependentParam.setTtIndependentId(cid);
               ttTripIndependentParam.setParamData(paramData);
               ttTripIndependentParam.setCreated(new Date());
               ttTripIndependentParam.setUpdated(new Date());
               i = ttTripIndependentParamDao.insert(ttTripIndependentParam);
           }

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }


    @Override
    public TtTripGroupParam getGroupParamById(Long id) {
        TtTripGroupParam ttTripGroupParam = ttTripGroupParamDao.selectByPrimaryKey(id);
        return ttTripGroupParam;
    }

    @Override
    public TtTripIndependentParam getIndependentParamById(Long id) {
         TtTripIndependentParam ttTripIndependentParam = ttTripIndependentParamDao.selectByPrimaryKey(id);
        return ttTripIndependentParam;
    }


    @Override
    public int editParam(Long id, int ofType, String paramData) {
        int i = 0;
        try {
            //是跟团游中的类目  修改跟团游规格表 tt_trip_group_param
            if(1 == ofType){
                //创建更新模板
                TtTripGroupParamExample example = new TtTripGroupParamExample();
                TtTripGroupParamExample.Criteria criteria = example.createCriteria();
                criteria.andIdEqualTo(id);

                TtTripGroupParam ttTripGroupParam = new TtTripGroupParam();
                ttTripGroupParam.setParamData(paramData);
                ttTripGroupParam.setUpdated(new Date());
                i = ttTripGroupParamDao.updateByExampleSelective(ttTripGroupParam,example);
            }else if(2 == ofType){ //是自助游中的类目  修改自助游规格表 tt_trip_independent_param
                //创建更新模板
                TtTripIndependentParamExample example = new TtTripIndependentParamExample();
                TtTripIndependentParamExample.Criteria criteria = example.createCriteria();
                criteria.andIdEqualTo(id);
                //
                TtTripIndependentParam ttTripIndependentParam = new TtTripIndependentParam();
                ttTripIndependentParam.setParamData(paramData);
                ttTripIndependentParam.setUpdated(new Date());
                i = ttTripIndependentParamDao.updateByExampleSelective(ttTripIndependentParam,example);
            }
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
