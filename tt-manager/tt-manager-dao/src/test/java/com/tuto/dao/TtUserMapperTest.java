package com.tuto.dao;

import com.tuto.common.util.MD5Utils;
import com.tuto.pojo.po.TtManager;
import com.tuto.pojo.po.TtManagerExample;
import com.tuto.pojo.po.TtUser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class TtUserMapperTest {
    @Autowired
    private TtUserMapper ttUserMapper;
    @Autowired
    private TtManagerMapper ttManagerDao;
    @Test
    public void selectByPrimaryKey() throws Exception {
        TtUser ttUser = ttUserMapper.selectByPrimaryKey(2L);
        String name = ttUser.getName();

        System.out.println(name);
    }



    @Test
    public void doLogin() {

        //密码加密
        String md5 = MD5Utils.getMd5Value("123456");

        TtManagerExample example=new TtManagerExample();
        TtManagerExample.Criteria criteria=example.createCriteria();
       // criteria.andNameEqualTo("admin");
        criteria.andPasswordEqualTo(md5);


        System.out.println(md5);
        List<TtManager> ttManagers = ttManagerDao.selectByExample(example);

       if(ttManagers.size()>0){
           System.out.print("1");
           System.out.print(ttManagers.get(0));

       }else{
           System.out.print("2");
       }

    }

}