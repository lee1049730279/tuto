package com.tuto.web;

import com.tuto.pojo.po.TtTrip;
import com.tuto.pojo.po.TtTripDetail;
import com.tuto.service.TripAddService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@Scope("prototype")
public class TripAddAction {
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TripAddService tripAddService;
    //添加商品
    @RequestMapping(value = "/trip")
    @ResponseBody
    public int saveItem(@RequestParam("tids")List<Integer> tids, TtTrip ttTrip, Integer gid, Integer nid, TtTripDetail ttTripDetail){
        int i=0;
        try {
            i=tripAddService.saveTrip(ttTrip,gid,nid,ttTripDetail,tids);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
      return i;
    }
}
