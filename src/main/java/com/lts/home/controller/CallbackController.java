package com.lts.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CallbackController {
    @RequestMapping(value = "callBack",method = RequestMethod.GET)
    public String callBack(){
        return "callback";
    }

}
