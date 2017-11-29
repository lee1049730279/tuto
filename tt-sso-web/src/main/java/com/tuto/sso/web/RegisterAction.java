package com.tuto.sso.web;

import com.tuto.common.dto.MessageResult;
import com.tuto.pojo.po.TtUser;
import com.tuto.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: Administrator
 * Date: 2017/11/28
 * Time: 20:39
 * Version:V1.0
 */
@Controller
public class RegisterAction {

    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping(value = "/doRegister",method = RequestMethod.POST)
    public MessageResult registerin(TtUser ttUser,String recode){
        MessageResult mr=new MessageResult();
        try {

            if(ttUser.getPhoneCode()==recode){
                mr.setSuccess(false);
                mr.setMessage("手机验证码不正确");
                return mr;
            }else{
                int num=userService.addUser(ttUser);
                if(num!=1){
                    mr.setSuccess(false);
                    mr.setMessage("添加失败");
                    return mr;
                }
                mr.setSuccess(true);
                mr.setMessage("添加成功");
        }

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return mr;
    }


}
