package com.spring.life.entity;

import org.springframework.stereotype.Controller;

import javax.persistence.*;

@Entity
@Table(name = "pic")
public class Pic {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name = "pichost")
    private String pichost;

    @Column(name="picpath")
    private String picpath;

    @Override
    public String toString() {
        return "Pic{" +
                "id=" + id +
                ", pichost=" + pichost +
                ", picpath='" + picpath + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPichost() {
        return pichost;
    }

    public void setPichost(String pichost) {
        this.pichost = pichost;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }
}
