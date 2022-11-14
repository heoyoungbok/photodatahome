package com.lts.home.service;

import com.lts.home.dto.MemberDTO;
import com.lts.home.repository.MemberRepository;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import lombok.extern.log4j.Log4j;


@Service
//@Log4j
public class MemberService {
//    @Autowired
//    private MemberRepository memberRepository;
//    @Autowired @Qualifier("BCryptPasswordEncoder")
//    private PasswordEncoder encoder;
//
//    /* 카카오 로그인 */
//    @Override
//    public void kakaoJoin(MemberDTO memberDTO) {
//        MemberRepository.kakaoInsert(memberDTO);
//        String userid = memberDTO.getUserid();
//        log.info("userid:: " + userid);
//        memberRepository.authorize(memberDTO);
//    }
//
//    @Override
//    public MemberDTO kakaoLogin(String snsId) {
//        log.info("snsId:: " + snsId);
//        return MemberRepository.kakaoSelect(snsId);
//    }
//
//    @Override
//    public String findAuthBy(String userid) {
//        log.info("userid:: " + userid);
//        return memberRepository.findAuthBy(userid);
//    }
//
//    @Override
//    public String findUserIdBy2(String snsId) {
//        log.info("snsId:: " + snsId);
//        return memberRepository.findUserIdBy2(snsId);
//    }
//
//    @Override
//    public MemberDTO findByUserId(String userid) {
//        //
//        return memberRepository.read(userid);
//    }

}

