package com.tuto.service.impl;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.common.util.MD5Utils;
import com.tuto.dao.TtManagerMapper;
import com.tuto.dao.TtUserCustomMapper;
import com.tuto.dao.TtUserMapper;
import com.tuto.pojo.po.TtManager;
import com.tuto.pojo.po.TtManagerExample;
import com.tuto.pojo.po.TtUser;
import com.tuto.pojo.po.TtUserExample;
import com.tuto.pojo.vo.TtUserCustom;
import com.tuto.pojo.vo.TtUserQuery;
import com.tuto.service.UserService;
import org.apache.jute.Record;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: Administrator
 * Date: 2017/11/16
 * Time: 22:31
 * Version:V1.0
 */
@Service
public class UserServiceImpl implements UserService {

    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TtUserCustomMapper ttUserCustomDao;
    @Autowired
    private TtUserMapper ttUserDao;
    @Autowired
    private TtManagerMapper ttManagerDao;

    //分页查询
    @Override
    public Result<TtUserCustom> listTbUserByPage(Page page, Order order, TtUserQuery ttUserQuery) {
        Result<TtUserCustom> result=new Result<>();
        try {
            //创建Map
            Map<String,Object> map=new HashMap<>();
            map.put("page",page);
            map.put("order",order);
            map.put("ttUserQuery",ttUserQuery);

            //查询记录总数
            int countNum=ttUserCustomDao.countTtUser(ttUserQuery);

            //查询List<TtUser>
            List<TtUserCustom> list=ttUserCustomDao.listTtUserByPage(map);

            //result添加数据

            result.setTotal(countNum);
            result.setRows(list);


        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    //激活用户
    @Override
    public int activateById(List<Long> ids) {
        int updateNum=0;
        try {
            //创建修改模板
            TtUserExample example=new TtUserExample();
            TtUserExample.Criteria criteria=example.createCriteria();
            criteria.andIdIn(ids);

            TtUser record=new TtUser();
            record.setState(1);

            //修改
            updateNum=ttUserDao.updateByExampleSelective(record,example);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return updateNum;
    }

    //拉黑用户

    @Override
    public int shieldingById(List<Long> ids) {
        int updateNum=0;
        try {
            //创建修改模板
            TtUserExample example=new TtUserExample();
            TtUserExample.Criteria criteria=example.createCriteria();
            criteria.andIdIn(ids);

            TtUser record=new TtUser();
            record.setState(2);

            updateNum=ttUserDao.updateByExampleSelective(record,example);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return updateNum;
    }

    /**
     * 后台登录
     * @param username
     * @param password
     * @return
     */

    @Override
    public TtManager doLogin(String username, String password) {

        //密码加密
        String md5 = MD5Utils.getMd5Value(password);

        TtManagerExample example=new TtManagerExample();
        TtManagerExample.Criteria criteria=example.createCriteria();
        criteria.andNameEqualTo(username);
        criteria.andPasswordEqualTo(md5);


        List<TtManager> ttManagers = ttManagerDao.selectByExample(example);

        if(ttManagers.size()!=0){
            return ttManagers.get(0);
        }else{
            return null;
        }

    }
}
