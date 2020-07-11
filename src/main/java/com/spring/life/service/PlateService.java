package com.spring.life.service;

import com.spring.life.entity.Plate;

import java.util.List;

public interface PlateService {

    List<Plate> getPlates();

    String savePlate(Plate thePlate);

    Plate getPlate(int theId);

    void deletePlate(int theId);

    List<Plate> selectPlate(int theId);

    void picsave(String picnum, String picpath);
}
