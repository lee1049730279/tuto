package com.tuto.web;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
public class empty {

    @RequestMapping("/")
    public String doqwe(){

        return "index";
    }
}
