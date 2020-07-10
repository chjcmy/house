package com.spring.life.entity;

import javax.persistence.*;

@Entity
@Table(name = "pic")
public class Pic {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "pichost")
    private Plate pichost;

    @Column(name="picpath")
    private String savepath;

    public Plate getPichost() {
        return pichost;
    }

    public void setPichost(Plate pichost) {
        this.pichost = pichost;
    }

    public String getSavepath() {
        return savepath;
    }

    public void setSavepath(String savepath) {
        this.savepath = savepath;
    }

    @Override
    public String toString() {
        return "Pic{" +
                "id=" + id +
                ", pichost=" + pichost +
                ", savepath='" + savepath + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
