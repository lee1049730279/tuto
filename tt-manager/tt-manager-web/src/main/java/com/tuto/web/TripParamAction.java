package com.tuto.web;

import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtTripParamCustom;
import com.tuto.service.TripParamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@Scope("prototype")
public class TripParamAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TripParamService tripParamService;


    //列表查询规格
    @ResponseBody
    @RequestMapping("/tripParams")
    public Result<TtTripParamCustom> listItemParams(Page page){
        Result<TtTripParamCustom> list = null;
        try {
            list = tripParamService.listTripParamsByPage(page);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

    //批量删除类别规格
    @ResponseBody
    @RequestMapping("/trip/param/batch")
    public int updateParamBatch(@RequestParam("ids[]") List<Long> ids, @RequestParam("ofTypes[]") List<Long> ofTypes){
        int i = 0;
        try {
            i = tripParamService.updateParamBatch(ids,ofTypes);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    //保存类别规格
    //ofType:判断属于跟团游还是自助游  1是跟团游  2是自助游
    //id:自助游或跟团游中的最终类目的id（国内跟团等等）
    @ResponseBody
    @RequestMapping("/trip/param/save/{cid}/{ofType}")
    public int saveParam(@PathVariable("cid") Long cid,@PathVariable("ofType") int ofType, String paramData){
        int i = 0;
        try {
            i = tripParamService.saveParam(cid,ofType,paramData);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @ResponseBody
    @RequestMapping("/trip/param/editPage")
    public String editPage(String dataParam)
    {
        return "trip_param_edit";
    }




}
