package com.spring.life.service;

import com.spring.life.entity.Plate;

import java.util.List;

public interface PlateService {

    public List<Plate> getPlates();

    public void savePlate(Plate thePlate);

    public Plate getPlate(int theId);
}
