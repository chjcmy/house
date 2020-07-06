package com.spring.life.service;

import com.spring.life.entity.Plate;

import java.util.List;

public interface PlateService {

    List<Plate> getPlates();

    void savePlate(Plate thePlate);

    Plate getPlate(int theId);

    void deletePlate(int theId);

    List<Plate> selectPlate(int theId);

    ;
}
