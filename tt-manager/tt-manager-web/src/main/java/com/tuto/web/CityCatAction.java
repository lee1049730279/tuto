package com.tuto.web;

import com.tuto.common.dto.TreeNode;
import com.tuto.service.CityCatService;
import com.tuto.service.TripCatService;
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
public class CityCatAction {
    @Autowired
    private CityCatService cityCatService;
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @RequestMapping("/cityCats")
    @ResponseBody
    //实现主题游多选的下拉列表
    public List<TreeNode> listCityCatsByPid(@RequestParam("parentId") Long parentId) {
        List<TreeNode> treeNodeList = null;
        try {
            treeNodeList = cityCatService.listCityCatsByPid(parentId);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }
}
