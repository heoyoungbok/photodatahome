package com.lts.home.repository;

import com.lts.home.dto.MemberDTO;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {

//    MemberDTO read(String userid);
//    void register(MemberDTO dto);                     // 회원 가입
//    void authorize (MemberDTO memberDTO);             // 회원 권한
//    void modify(MemberDTO dto);                     // 회원 정보 수정
//    void remove(MemberDTO dto);                         // 회원 탈퇴
//    int checkPw(String userid, String userpw);     // 수정 및 삭제를 위한 비밀번호 체크
//
//    // 카카오 회원가입
//    void kakaoInsert(MemberDTO memberDTO);
//
//    //snsId로 회원정보얻기
//    @Select("SELECT USERID, USERNAME, EMAIL, TEL FROM TBL_MEMBER WHERE SNSID = #{snsId}")
//    MemberVO kakaoSelect(String snsId);
//
//    //snsId로 회원 아이디찾기
//    @Select("SELECT USERID FROM TBL_MEMBER WHERE SNSID = #{snsId}")
//    String findUserIdBy2(String snsId);
//
//    //회원아이디로 권한찾기
//    @Select("SELECT AUTH FROM TBL_MEMBER_AUTH WHERE USERID = #{userid}")
//    String findAuthBy(String userid);

}
