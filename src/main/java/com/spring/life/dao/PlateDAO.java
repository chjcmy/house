package com.spring.life.dao;

import com.spring.life.entity.Pic;
import com.spring.life.entity.Plate;

import java.util.List;

public interface PlateDAO {
    List<Plate> getPlates();

    String savePlate(Plate thePlate);

    Plate getPlate(int theId);

    void deletePlate(int theId);

    List<Plate> selectPlate(int theId);

    void picsave(String picnum, String picpath);

    List<Pic> getPic(int theId);

    List<Plate> selectlist(String id);
}
