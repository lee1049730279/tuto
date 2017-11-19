package com.tuto.web;

import com.tuto.pojo.po.TtTripGroupParam;
import com.tuto.service.GroupParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class GroupParamAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private GroupParamService groupParamService;

    @RequestMapping(value = "/groupParam/query/{gid}",method = RequestMethod.GET)
    @ResponseBody
    public TtTripGroupParam getGroupParamByNid(@PathVariable("gid") Long gid){
        TtTripGroupParam ttTripGroupParam=null;
        try {
            ttTripGroupParam = groupParamService.getGroupParamByGid(gid);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return ttTripGroupParam;
    }
}
