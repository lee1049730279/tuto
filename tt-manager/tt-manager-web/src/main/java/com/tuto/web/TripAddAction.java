package com.tuto.web;

import com.tuto.common.dto.MessageResult;
import com.tuto.pojo.po.TtTrip;
import com.tuto.pojo.po.TtTripDetail;
import com.tuto.service.TripAddService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jms.*;
import java.util.List;

@Controller
@Scope("prototype")
public class TripAddAction {
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TripAddService tripAddService;
    @Autowired
    private JmsTemplate jmsTemplate;
    @Resource
    private Destination topicDestination;
    //添加商品
//    @RequestMapping(value = "/trip")
//    @ResponseBody
//    public int saveItem(@RequestParam("tids")List<Integer> tids, TtTrip ttTrip, Integer gid, Integer nid, TtTripDetail ttTripDetail,String paramData,String detailedAddress){
//      //System.out.println(paramData);
//        int i=0;
//        try {
//            i=tripAddService.saveTrip(ttTrip,gid,nid,ttTripDetail,tids,paramData,detailedAddress);
//        }catch (Exception e){
//            logger.error(e.getMessage(),e);
//            e.printStackTrace();
//        }
//      return i;
//    }

    @RequestMapping(value = "/trip")
    @ResponseBody
    public MessageResult saveItem(@RequestParam("tids")List<Integer> tids, TtTrip ttTrip, Integer gid, Integer nid, TtTripDetail ttTripDetail, String paramData, String detailedAddress){
        //System.out.println(paramData);
        MessageResult mr=null;
        try {
            //1 保存商品
            final Long tripId=tripAddService.saveTrip(ttTrip,gid,nid,ttTripDetail,tids,paramData,detailedAddress);
            //2 发送消息
            jmsTemplate.send(topicDestination, new MessageCreator() {
                @Override
                public Message createMessage(Session session) throws JMSException {
                    TextMessage textMessage = session.createTextMessage(tripId+"");
                    return textMessage;
                }
            });
            mr.setSuccess(true);
            mr.setMessage("新增1个商品成功");
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return mr;
    }
}
