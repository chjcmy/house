package com.spring.life.util;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AuthInfo {

    @Id
    private String id;
    @Id
    private String user_id;
    @Id
    private String user_name;

    public AuthInfo(String id, String user_id, String user_name) {
        this.id = id;
        this.user_id = user_id;
        this.user_name = user_name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
}
