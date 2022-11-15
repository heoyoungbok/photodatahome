package com.lts.home.service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.lts.home.dto.MemberDTO;
import com.lts.home.repository.MemberRepository;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
//import sun.net.www.protocol.http.HttpURLConnection;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import lombok.extern.log4j.Log4j;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
//import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
//import sun.net.www.protocol.http.HttpURLConnection ;
import javax.net.ssl.TrustManager;
@Service
//@Log4j
public class MemberService {
    public String getAccessToken (String authorize_code) {
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //	POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            //	POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=20f88d6bd6aba3224d8eddf828f928fa");
            sb.append("&redirect_uri=http://localhost:8080/login");
            sb.append("&code=" + authorize_code);
            bw.write(sb.toString());
            bw.flush();

            //	결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            //	요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);

            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);

            access_Token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

            System.out.println("access_token : " + access_Token);
            System.out.println("refresh_token : " + refresh_Token);

            br.close();
            bw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return access_Token;
    }




//    private String authorize_code;
//
//    public String getAccessToken(String code) {
//        String access_Token = "";
//        String refresh_Token = "";
//        String reqURL = "https://kauth.kakao.com/oauth/token";
//        try {
//            URL url = new URL(reqURL);
//            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//            conn.setRequestMethod("POST");
//            conn.setDoOutput(true);
//            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
//            StringBuilder sb = new StringBuilder();
//            sb.append("grant_type=authorization_code");
//            sb.append("&client_id=REST_API키"); //본인이 발급받은 key
//            sb.append("&redirect_uri=REDIRECT_URI"); // 본인이 설정한 주소
//            sb.append("&code=" + authorize_code);
//            bw.write(sb.toString());
//            bw.flush();
//            int responseCode = conn.getResponseCode();
//            System.out.println("responseCode : " + responseCode);
//            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//            String line = "";
//            String result = "";
//            while ((line = br.readLine()) != null) {
////                result += line;
//            }
//            System.out.println("response body : " + result);
//            JsonParser parser = new JsonParser();
//            JsonElement element = parser.parse(result);
//            access_Token = element.getAsJsonObject().get("access_token").getAsString();
//            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
//            System.out.println("access_token : " + access_Token);
//            System.out.println("refresh_token : " + refresh_Token);
//            br.close();
//            bw.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return access_Token;
//    }
//
//    public HashMap<String, Object> getUserInfo(String access_Token) {
//        HashMap<String, Object> userInfo = new HashMap<String, Object>();
//        String reqURL = "https://kapi.kakao.com/v2/user/me";
//        try {
//            URL url = new URL(reqURL);
//            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//            conn.setRequestMethod("GET");
//            conn.setRequestProperty("Authorization", "Bearer " + access_Token);
//            int responseCode = conn.getResponseCode();
//            System.out.println("responseCode : " + responseCode);
//            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//            String line = "";
//            String result = "";
//            while ((line = br.readLine()) != null) {
//                result += line;
//            }
//            System.out.println("response body : " + result);
//            JsonParser parser = new JsonParser();
//            JsonElement element = parser.parse(result);
//            JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
//            JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
//            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
//            String email = kakao_account.getAsJsonObject().get("email").getAsString();
//            userInfo.put("nickname", nickname);
//            userInfo.put("email", email);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return userInfo;
//    }

    }
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



