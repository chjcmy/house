package com.spring.life.entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "plate")
public class Plate {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="kind")
    private String kind;

    @Column(name="kind_think")
    private String kind_think;

    @Column(name="intro")
    private String intro;

    @Column(name="main_text")
    private String main_text;

    @Column(name="date")
    private String date;


    public int getId() {
        return id;
    }



    public String getIntro() {
        return intro;
    }

    public String getKind() {
        return kind;
    }

    public String getKind_think() {
        return kind_think;
    }

    public String getMain_text() {
        return main_text;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public void setKind_think(String kind_think) {
        this.kind_think = kind_think;
    }

    public void setMain_text(String main_text) {
        this.main_text = main_text;
    }

    public Plate() {

    }


    @Override
    public String toString() {
        return "plate{" +
                "id=" + id +
                ", kind='" + kind + '\'' +
                ", kind_think='" + kind_think + '\'' +
                ", intro='" + intro + '\'' +
                ", main_text='" + main_text + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
