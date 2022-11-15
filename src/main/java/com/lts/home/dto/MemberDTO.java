package com.lts.home.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Map;

@Getter
@Setter
@ToString
@Data
public abstract class MemberDTO {

    protected Map<String, Object> attributes;
    public MemberDTO(Map<String,Object> attributes){
        this.attributes = attributes;
    }

    public Map<String,Object> getAttributes(){
        return attributes;
    }

    public abstract String getUsername();

    public abstract String getId();

    public abstract String getName();

    public abstract String getEmail();

    public abstract String getImageUrl();



}
