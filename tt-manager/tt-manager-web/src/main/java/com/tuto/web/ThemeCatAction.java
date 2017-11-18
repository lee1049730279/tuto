package com.tuto.web;

import com.tuto.pojo.po.TtTheme;
import com.tuto.service.ThemeCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@Controller
@Scope("prototype")
public class ThemeCatAction {
    @Autowired
    private ThemeCatService themeCatService;
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @RequestMapping(value = "/themeCats",method = RequestMethod.GET)
    @ResponseBody
    public List<TtTheme> listThemeCats() {
        List<TtTheme> list= null;
        try {
           list = themeCatService.listThemeCats();
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  list;
    }
}
