package com.tuto.web;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.po.TtManager;
import com.tuto.pojo.vo.TtUserCustom;
import com.tuto.pojo.vo.TtUserQuery;
import com.tuto.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * User: Administrator
 * Date: 2017/11/16
 * Time: 22:14
 * Version:V1.0
 */
@Controller
@Scope("prototype")
public class UserAction {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("items")
    private Result<TtUserCustom> listTbUser(Page page, Order order, TtUserQuery ttUserQuery) throws Exception{
        Result<TtUserCustom> result=null;
        try {
            result=userService.listTbUserByPage(page,order,ttUserQuery);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }
    //激活用户
    @ResponseBody
    @RequestMapping(value = "items/batch/activate",method = RequestMethod.POST)
    public int activate_updateById(@RequestParam("ids[]") List<Long> ids) throws Exception{
        int updateNum=0;
        try {
            updateNum=userService.activateById(ids);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return updateNum;
    }

    //拉黑用户
    @ResponseBody
    @RequestMapping(value = "items/batch/shielding",method = RequestMethod.POST)
    public int shielding_updateById(@RequestParam("ids[]") List<Long> ids)throws Exception{
        int updateNum=0;
        try {
            updateNum=userService.shieldingById(ids);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return updateNum;
    }


    @ResponseBody
    @RequestMapping("/manager/login")
    public String managerLogin(String username,String password){

        String status="";
        TtManager ttManager=userService.doLogin(username,password);
        if(ttManager!=null) {
            status = "200";
        }
        return status;

    }
    @RequestMapping("/loginin")
    public String managerLoginSuccess(){

        return "index";

    }
}
