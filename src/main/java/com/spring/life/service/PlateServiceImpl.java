package com.spring.life.service;

import com.spring.life.dao.PlateDAO;
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
    public void savePlate(Plate thePlate) {

        plateDAO.savePlate(thePlate);
    }

    @Override
    @Transactional
    public Plate getPlate(int theId) {
        return plateDAO.getPlate(theId);
    }
}
