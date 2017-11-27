package com.tuto.search.web;


import com.tuto.pojo.vo.TtTripSearchResult;
import com.tuto.service.SearchTripService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 15:40
 * Version:V1.0
 */
@Controller
public class SearchIndexAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private SearchTripService searchTripService;

    /**
     * 查询系统首页查询
     * @param keyword 跟页面的控件name保持一致
     * @param page 默认为1 @RequestParam(defaultValue = "1")
     * @param model
     * @return
     */
    @RequestMapping(value = "/")
    public String searchIndex(String keyword,
                              @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows, Model model){

        try {
            if (keyword != null) {
                keyword = new String(keyword.getBytes("iso-8859-1"), "utf-8");
                //从solr索引库中查询商品
                TtTripSearchResult searchResult = searchTripService.search(keyword, page, rows);
                //把结果传递给页面
                model.addAttribute("query", keyword);
                model.addAttribute("totalPages", searchResult.getTotalPages());
                model.addAttribute("page", page);
                model.addAttribute("rows", rows);
                model.addAttribute("recordCount", searchResult.getRecordCount());
                model.addAttribute("tripList", searchResult.getTripList());

            }
        } catch (Exception e){
            logger.error(e.getMessage(), e);
        }

        return "search";
    }

}
