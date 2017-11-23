package com.tuto.web;

import com.tuto.pojo.po.TtTrip;
import com.tuto.pojo.po.TtTripDetail;
import com.tuto.pojo.vo.TtTripEditCustom;
import com.tuto.service.TripEditService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
@Scope("prototype")
public class TripEditAction {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TripEditService tripEditService;
    //根据id查询景点，并将数据进行数据回显
    @RequestMapping(value = "/trip/edit")
    public String findTripById(Long id, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
       /* response.setContentType("type/text;utf-8");
        request.setCharacterEncoding("utf-8");*/
        try {
            TtTripEditCustom ttTripEditCustom=tripEditService.findTripById(id);
            System.out.println(ttTripEditCustom.getIndependentParamData());
            request.setAttribute("ttTripEditCustom",ttTripEditCustom);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return "trip-edit";
    }

    //修改数据
    @RequestMapping(value = "/tripEdit")
    @ResponseBody
    public int updateItem( TtTrip ttTrip,TtTripDetail ttTripDetail, String paramData,String detailedAddress){
        int i=0;
        try {
            i=tripEditService.updateTrip(ttTrip,ttTripDetail,paramData,detailedAddress);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }
}
