package com.tuto.portal.web;
import com.tuto.common.util.PropKit;
import com.tuto.pojo.po.TtTripPicture;
import com.tuto.pojo.vo.TtPictureCustom;
import com.tuto.portal.service.GalleryService;
import com.tuto.portal.service.TtPictureCustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PortalIndexAction {
  @Autowired
  private GalleryService galleryService;
    @Autowired
    private TtPictureCustomService ttPictureCustomService;
    @RequestMapping("/")
    public  String portalIndex(Model model){
        //第一步：使用service去查,根据tb_content_catagoryde ID去查
        Long tripId= PropKit.use("ftp.properties").getLong("ftp.gallery");
       List<TtTripPicture> list= galleryService.listGallerysByTripId(tripId);
        List<TtPictureCustom> list1 = ttPictureCustomService.getPictureByGroupId(2);
        List<TtPictureCustom> list2 = ttPictureCustomService.getPictureByGroupId(3);
        List<TtPictureCustom> list3 = ttPictureCustomService.getPictureByIndependentId(2);
        List<TtPictureCustom> list4 = ttPictureCustomService.getPictureByIndependentId(3);
        List<TtPictureCustom> list5 = ttPictureCustomService.getPictureByThemeId();
        System.out.println(list1.get(0));
        model.addAttribute("pictureList_2",list1);
        model.addAttribute("pictureList_3",list2);
        model.addAttribute("pictureList_4",list3);
        model.addAttribute("pictureList_5",list4);
        model.addAttribute("pictureList_6",list5);
        //第二步：存放到model中
        model.addAttribute("ad1List",list);
        //第三步：返回首页
        return "index";
    }

    @RequestMapping("search")
    public  String portalSearch(){
      /*  //第一步：使用service去查,根据tb_content_catagoryde ID去查
        Long id=PropKit.use("ftp.properties").getLong("ftp.gallery");
       List<TbContent>list= contentService.listContentsByCid(id);
        //第二步：存放到model中
        model.addAttribute("ad1List",list);
        //第三步：返回首页*/
        return "search";
    }

    @RequestMapping("detail")
    public  String portalDetail(){
      /*  //第一步：使用service去查,根据tb_content_catagoryde ID去查
        Long id=PropKit.use("ftp.properties").getLong("ftp.gallery");
       List<TbContent>list= contentService.listContentsByCid(id);
        //第二步：存放到model中
        model.addAttribute("ad1List",list);
        //第三步：返回首页*/
        return "detail";
    }
    @RequestMapping("order")
    public  String portalorder(){
      /*  //第一步：使用service去查,根据tb_content_catagoryde ID去查
        Long id=PropKit.use("ftp.properties").getLong("ftp.gallery");
       List<TbContent>list= contentService.listContentsByCid(id);
        //第二步：存放到model中
        model.addAttribute("ad1List",list);
        //第三步：返回首页*/
        return "order";
    }
}
