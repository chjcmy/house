package com.spring.life.dao;

import com.spring.life.entity.Plate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PlateDAOImpl implements PlateDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
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

    @Override
    public void savePlate(Plate thePlate) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(thePlate);


    }

    @Override
    public Plate getPlate(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();

        Plate thePlate = currentSession.get(Plate.class, theId);

        return thePlate;
    }

    @Override
    public void deletePlate(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Plate where id=:plateId");
        theQuery.setParameter("plateId", theId);

        theQuery.executeUpdate();
    }

    @Override
    public List<Plate> selectPlate(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;

        //
        // only search by name if theSearchName is not empty
        //
        if (theId != 0) {

            // search for firstName or lastName ... case insensitive
            theQuery =currentSession.createQuery("from Plate where id=:plateId ", Plate.class);
            theQuery.setParameter("plateId", theId);

        }
        else {
            // theSearchName is empty ... so just get all customers
            theQuery =currentSession.createQuery("from Plate", Plate.class);
        }

        // execute query and get result list
        List<Plate> mainplate = theQuery.getResultList();

        // return the results
        return mainplate;
    }


}

