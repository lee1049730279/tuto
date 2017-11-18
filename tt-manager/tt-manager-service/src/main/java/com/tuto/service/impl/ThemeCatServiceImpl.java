package com.tuto.service.impl;

import com.tuto.dao.TtThemeMapper;
import com.tuto.pojo.po.TtTheme;
import com.tuto.service.ThemeCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.context.Theme;

import java.util.List;

@Service
public class ThemeCatServiceImpl implements ThemeCatService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtThemeMapper ttThemeDao;
    @Override
    //实现主题游多选的下拉列表
    public List<TtTheme> listThemeCats() {
        List<TtTheme> list=null;
        try {
            list=ttThemeDao.selectByExample(null);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return list;
    }
}
