package com.spring.life.dao;

import com.spring.life.entity.Plate;

import java.util.List;

public interface PlateDAO {
    public List<Plate> getPlates();

    public void savePlate(Plate thePlate);

    public Plate getPlate(int theId);

    public void deletePlate(int theId);
}
