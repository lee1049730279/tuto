package com.tuto.web;

import com.tuto.pojo.po.TtTripIndependentParam;
import com.tuto.service.IndependentParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndependentParamAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private IndependentParamService independentParamService;

    @RequestMapping(value = "/independentParam/query/{nid}",method = RequestMethod.GET)
    @ResponseBody
    public TtTripIndependentParam getIndependentParamByNid(@PathVariable("nid") Long nid){
        TtTripIndependentParam ttTripIndependentParam=null;
        try {
            ttTripIndependentParam = independentParamService.getIndependentParamByNid(nid);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return ttTripIndependentParam;
    }
}
