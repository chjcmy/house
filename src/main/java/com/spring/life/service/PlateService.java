package com.spring.life.service;

import com.spring.life.entity.Pic;
import com.spring.life.entity.Plate;

import java.util.List;

public interface PlateService {

    List<Plate> getPlates();

    String savePlate(Plate thePlate);

    Plate getPlate(int theId);

    void deletePlate(int theId);

    List<Plate> selectPlate(int theId);

    void picsave(String picnum, String picpath);

    List<Pic> getPic(int theId);

    List<Plate> selectlist(String id);

    List<Plate> leftlist();

    List<Plate> getSearch(String what, String contents);
}
