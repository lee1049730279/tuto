package com.tuto.sso.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: Administrator
 * Date: 2017/11/25
 * Time: 15:42
 * Version:V1.0
 */
@Controller
public class IndexAction {

    @RequestMapping("/")
    public String doIndex(){
        return "login";
    }

    @RequestMapping("/register")
    public String doRegister(){
        return "register";
    }

    @RequestMapping("/index")
    public String doIndex1(){
        return "index";
    }

    @RequestMapping("/user_detail")
    public String doUser_detail(){
        return "user_detail";
    }


    @RequestMapping("/user_upsatePassword")
    public String doUser_detail2(){
        return "user_upsatePassword";
    }
}
