package com.lts.home.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
import java.util.List;

@Getter
@Setter
@ToString
@Data
public class MemberDTO {
    private String userid;
    private String userpw;
    private String userName;

    private Date regDate;

    private String email;
    private String tel;
//    private List<AuthVO> authList;

    private String snsId;
}
