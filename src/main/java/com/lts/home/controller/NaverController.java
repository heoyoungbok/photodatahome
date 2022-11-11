package com.lts.home.controller;

import com.lts.home.dto.NaverDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class NaverController {

    @GetMapping("/naverSave")
    public String naverSaveForm(){
        return "memberLogin";
    }
    @RequestMapping(value = "naverSave", method = RequestMethod.POST)
    public @ResponseBody String naverSave(@RequestParam ("n_age") String n_age,@RequestParam("n_birthday") String n_birthday,
                                          @RequestParam ("n_email") String n_email,@RequestParam("n_gender") String n_gender,
                                          @RequestParam ("n_id") String n_id, @RequestParam("n_name") String n_name, String n_nickName){
        System.out.println("##########################################");
        System.out.println(n_age);
        System.out.println(n_birthday);
        System.out.println(n_email);
        System.out.println(n_gender);
        System.out.println(n_id);
        System.out.println(n_name);
        System.out.println(n_nickName);
        System.out.println("###########################################");

        NaverDTO naver = new NaverDTO();
        naver.setN_age(n_age);
        naver.setN_birthday(n_birthday);
        naver.setN_email(n_email);
        naver.setN_gender(n_gender);
        naver.setN_id(n_id);
        naver.setN_name(n_name);
        naver.setN_nickName(n_nickName);

        String result = "no";

        if (naver != null){
            result = "ok";

        }
        return result;

    }

}
