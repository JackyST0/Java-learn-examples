package com.example.ajax.entity;


import lombok.Builder;
import lombok.Data;
import java.util.Date;

@Data
@Builder
public class User {

    Long id;
    String username;
    String password;
    String email;
    String phoneNumber;
    Boolean enable;
    Date createdTime;

    public User(Long id, String username, String password, String email, String phoneNumber, Boolean enable, Date createdTime) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.enable = enable;
        this.createdTime = createdTime;
    }

}
