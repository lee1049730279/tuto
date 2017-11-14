package com.tuto.dao;

import com.tuto.pojo.po.TtUser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class TtUserMapperTest {
    @Autowired
    private TtUserMapper ttUserMapper;
    @Test
    public void selectByPrimaryKey() throws Exception {
        TtUser ttUser = ttUserMapper.selectByPrimaryKey(1L);
        String name = ttUser.getName();

        System.out.println(name);
    }

}