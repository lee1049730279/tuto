package com.tuto.web;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.po.TtTripGroupParam;
import com.tuto.pojo.po.TtTripIndependentParam;
import com.tuto.pojo.vo.TtTripParamCustom;
import com.tuto.service.TripParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@Scope("prototype")
public class TripParamAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TripParamService tripParamService;


    //列表查询规格
    @ResponseBody
    @RequestMapping("/tripParams/{ofType}")
    public Result<TtTripParamCustom> listItemParams(Page page, Order order, @PathVariable(value = "ofType") int ofType) {
        Result<TtTripParamCustom> list = null;
        try {
            list = tripParamService.listTripParamsByPage(page,order,ofType);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }


    //批量删除类别规格
    @ResponseBody
    @RequestMapping("/trip/param/batch")
    public int updateParamBatch(@RequestParam("ids[]") List<Long> ids, @RequestParam("ofTypes[]") List<Long> ofTypes) {
        int i = 0;
        try {
            i = tripParamService.removeParamBatch(ids, ofTypes);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    //保存类别规格
    //ofType:判断属于跟团游还是自助游  1是跟团游  2是自助游
    //cid:自助游或跟团游中的最终类目的id（国内跟团等等）
    @ResponseBody
    @RequestMapping("/trip/param/save/{cid}/{ofType}")
    public int saveParam(@PathVariable("cid") Long cid, @PathVariable("ofType") int ofType, String paramData) {
        int i = 0;
        try {
            i = tripParamService.saveParam(cid, ofType, paramData);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    //因为把日期类型和json字符串放到域中传到页面，页面会转换不成功  不知道原因  所有先把id传达页面
    //页面再通过id用ajax请求得到数据 json字符串就会转换成功
    @RequestMapping("/trip_param_edit/paramPage")
    public String getEditParamId(Long id, int ofType, String tripCatName, HttpServletRequest request) {

        request.setAttribute("id", id);
        request.setAttribute("ofType", ofType);
        request.setAttribute("tripCatName", tripCatName);
        return "trip-param-edit";
    }


    //修改类别规格 回显到修改页面的数据  因为不知道是返回跟团游的数据还是自助游的数据
    //而返回类型只能有一个  所有分成了两个方法去得到数据
    //这个方法时得到跟团游的数据
    @ResponseBody
    @RequestMapping("/trip/param/group/edit")
    public TtTripGroupParam getGroupParamPage(Long id) {
        TtTripGroupParam ttTripGroupParam=null;
        try {
            ttTripGroupParam = tripParamService.getGroupParamById(id);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return ttTripGroupParam;
    }

    //修改类别规格 回显到修改页面的数据
    //这个方法时得到自助游的数据
    @ResponseBody
    @RequestMapping("/trip/param/independent/edit")
    public TtTripIndependentParam editIndependentParamPage(Long id) {
        TtTripIndependentParam ttTripIndependentParam=null;
        try {
            ttTripIndependentParam = tripParamService.getIndependentParamById(id);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return ttTripIndependentParam;
    }


    //去数据库修改类别规格
    //ofType:判断属于跟团游还是自助游  1是跟团游  2是自助游
    //cid:自助游或跟团游中的最终类目的id（国内跟团等等）
    @ResponseBody
    @RequestMapping("/trip/param/edit/{id}/{ofType}")
    public int editParam(@PathVariable("id") Long id, @PathVariable("ofType") int ofType, String paramData) {
        int i = 0;
        try {
            i = tripParamService.editParam(id, ofType, paramData);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }
}

