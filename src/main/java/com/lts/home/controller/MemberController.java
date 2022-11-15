package com.lts.home.controller;

import com.lts.home.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class MemberController {

    private MemberService memberService;

   @RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
   public String kakakLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
        System.out.println("#########" + code);

       String access_Token = memberService.getAccessToken(code);
        System.out.println("###access_Token#### : " + access_Token);
        return "testPage";
   }
}
