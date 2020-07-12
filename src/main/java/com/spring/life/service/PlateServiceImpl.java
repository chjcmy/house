package com.spring.life.service;

import com.spring.life.dao.PlateDAO;
import com.spring.life.entity.Pic;
import com.spring.life.entity.Plate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class PlateServiceImpl implements PlateService{

    @Autowired
    private PlateDAO plateDAO;

    @Override
    @Transactional
    public List<Plate> getPlates() {
        return plateDAO.getPlates();
    }

    @Override
    @Transactional
    public String savePlate(Plate thePlate) {
        return plateDAO.savePlate(thePlate);
    }

    @Override
    @Transactional
    public Plate getPlate(int theId) {

        return plateDAO.getPlate(theId);
    }

    @Override
    @Transactional
    public void deletePlate(int theId) {
          plateDAO.deletePlate(theId);
    }

    @Override
    @Transactional
    public List<Plate> selectPlate(int theId) {
        return plateDAO.selectPlate(theId);
    }

    @Override
    @Transactional
    public void picsave(String picnum, String picpath) {
        plateDAO.picsave(picnum, picpath);
    }

    @Override
    @Transactional
    public List<Pic> getPic(int theId) {
        return plateDAO.getPic(theId);
    }


}
