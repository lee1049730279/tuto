package com.tuto.portal.web;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PortalIndexAction {
   /* @Autowired
    private ContentService contentService;*/
    @RequestMapping("/")
    public  String portalIndex(){
      /*  //第一步：使用service去查,根据tb_content_catagoryde ID去查
        Long id=PropKit.use("ftp.properties").getLong("ftp.gallery");
       List<TbContent>list= contentService.listContentsByCid(id);
        //第二步：存放到model中
        model.addAttribute("ad1List",list);
        //第三步：返回首页*/
        return "index";
    }
}
