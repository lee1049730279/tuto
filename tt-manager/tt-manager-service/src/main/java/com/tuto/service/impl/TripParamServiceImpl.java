package com.tuto.service.impl;

import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.dao.TtTripGroupParamCustomMapper;
import com.tuto.dao.TtTripGroupParamMapper;
import com.tuto.dao.TtTripIndependentParamMapper;
import com.tuto.pojo.vo.TtTripParamCustom;
import com.tuto.service.TripParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TripParamServiceImpl implements TripParamService{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtTripGroupParamCustomMapper tripGroupParamCustomDao;
    @Autowired
    private TtTripGroupParamMapper ttTripGroupParamDao;
    @Autowired
    private TtTripIndependentParamMapper ttTripIndependentParamDao;


    @Override
    public Result<TtTripParamCustom> listTripParamsByPage(Page page) {
        Result<TtTripParamCustom> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page",page);

            //1 创建一个响应参数实体类
            result = new Result<TtTripParamCustom>();
            //2 对total进行设值(符合条件的总记录数)
            int total = tripGroupParamCustomDao.countTripParams(map);
            total += tripGroupParamCustomDao.countTripIndependentParams(map);
            result.setTotal(total);
            //3 对rows进行设值(指定页码显示记录集合)
            List<TtTripParamCustom> list = tripGroupParamCustomDao.listTripParamsByPage(map);
            for(int i=0; i<list.size(); i++){
                list.get(i).setOfType(1);
            }
            List<TtTripParamCustom> list1 = tripGroupParamCustomDao.listTripIndependentParamsByPage(map);
            for(int i=0; i<list1.size(); i++){
                list1.get(i).setOfType(2);
                list.add(list1.get(i));
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
    public int updateParamBatch(List<Object> idAndOfType) {
        int i = 0;
        try {
            for(int j=0; j<idAndOfType.size(); j++){

            }
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}
