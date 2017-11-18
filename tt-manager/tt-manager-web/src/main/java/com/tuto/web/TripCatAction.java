package com.tuto.web;

import com.tuto.common.dto.TreeNode;
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
public class TripCatAction {
    @Autowired
    private TripCatService tripCatService;
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @RequestMapping("/groupCats")
    @ResponseBody
    public List<TreeNode> listGroupCatsByPid(@RequestParam("parentId") Integer parentId) {
        List<TreeNode> treeNodeList = null;
        try {
            treeNodeList = tripCatService.listGroupCatsByPid(parentId);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }

    @RequestMapping("/independentCats")
    @ResponseBody
    public List<TreeNode> listIndepdentCatsByPid(@RequestParam("parentId") Long parentId) {
        List<TreeNode> treeNodeList = null;
        try {
            treeNodeList = tripCatService.listIndependentCatsByPid(parentId);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }
}
