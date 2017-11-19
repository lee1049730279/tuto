package com.tuto.web;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
public class empty {

    @RequestMapping("/")
    public String doindex(){

        return "index";
    }
    @RequestMapping("/{page}")
    public String doindex1(@PathVariable("page") String page){
        return page;
    }

}
