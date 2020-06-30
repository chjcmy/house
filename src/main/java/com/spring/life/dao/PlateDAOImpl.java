package com.spring.life.dao;

import com.spring.life.entity.Plate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class PlateDAOImpl implements PlateDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Plate> getPlates() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query
        Query<Plate> theQuery =
                currentSession.createQuery("from Plate", Plate.class);

        // execute query and get result list
        List<Plate> plates = theQuery.getResultList();

        // return the results
        return plates;
    }
}

