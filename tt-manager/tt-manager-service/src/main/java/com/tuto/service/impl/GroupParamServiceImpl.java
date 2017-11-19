package com.tuto.service.impl;

import com.tuto.dao.TtTripGroupParamMapper;
import com.tuto.pojo.po.TtTripGroupParam;
import com.tuto.pojo.po.TtTripGroupParamExample;
import com.tuto.service.GroupParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GroupParamServiceImpl implements GroupParamService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtTripGroupParamMapper ttTripGroupParamDao;
    //将跟团游的规格参数详情显示到添加景点的页面
    @Override
    public TtTripGroupParam getGroupParamByGid(Long gid) {
        TtTripGroupParam ttTripGroupParam=null;
        try {
            TtTripGroupParamExample example=new TtTripGroupParamExample();
            TtTripGroupParamExample.Criteria criteria=example.createCriteria();
            criteria.andTtGroupIdEqualTo(gid);

            List<TtTripGroupParam> list = ttTripGroupParamDao.selectByExampleWithBLOBs(example);
            if(list !=null && list.size()>0){
                ttTripGroupParam = list.get(0);
            }
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return ttTripGroupParam;
    }
}
