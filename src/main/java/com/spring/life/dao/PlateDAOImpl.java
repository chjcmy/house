package com.spring.life.dao;

import com.spring.life.entity.Pic;
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
                currentSession.createQuery("from Plate order by id desc", Plate.class);

        // execute query and get result list
        List<Plate> plates = theQuery.getResultList();

        // return the results
        return plates;
    }

    @Override
    public String savePlate(Plate thePlate) {
        Session currentSession = sessionFactory.getCurrentSession();
        java.util.Date dt = new java.util.Date();

        java.text.SimpleDateFormat sdf =
                new java.text.SimpleDateFormat("yyyy-MM-dd");

        String currentTime = sdf.format(dt);
        thePlate.setDate(currentTime);
        System.out.println(thePlate.getDate());
        currentSession.saveOrUpdate(thePlate);
        Query theQuery = currentSession.createQuery("select id from Plate where intro=:intro ");

        theQuery.setParameter("intro", thePlate.getIntro());
        System.out.println(theQuery.getSingleResult());
        return String.valueOf(theQuery.getSingleResult());
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

    @Override
    public void picsave(String picnum, String picpath) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createNativeQuery("insert into pic(pichost, picpath) values (:pichost,:picpath)");
        theQuery.setParameter("pichost", picnum);
        theQuery.setParameter("picpath", picpath);

        theQuery.executeUpdate();

    }

    @Override
    public List<Pic> getPic(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;
        String theIds = String.valueOf(theId);
        theQuery =currentSession.createQuery("from Pic where pichost=:picId ", Pic.class);
        theQuery.setParameter("picId", theIds);

        List<Pic> mainpics = theQuery.getResultList();
        return mainpics;
    }

    @Override
    public List<Plate> selectlist(String id) {

        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;

        theQuery =currentSession.createQuery("from Plate where kind=:Id ", Plate.class);
        theQuery.setParameter("Id", id);
        return theQuery.getResultList();
    }

    @Override
    public List<Plate> leftlist() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;

        theQuery =currentSession.createQuery("from Plate order by date DESC", Plate.class);
        theQuery.setMaxResults(5);

        return theQuery.getResultList();
    }

    @Override
    public List<Plate> contentsearch(String what, String contents) {

        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;

        System.out.println(what);
        System.out.println("kind");
        if(what.equals("kind")) {
            theQuery = currentSession.createQuery("from Plate where kind like :content ", Plate.class);
        }
        else if (what.equals("main_text")) {
            theQuery = currentSession.createQuery("from Plate where main_text like :content ", Plate.class);
        }
        else if (what.equals("kind_think")) {
            theQuery = currentSession.createQuery("from Plate where kind_think like :content ", Plate.class);
        }
        else  {
            theQuery = currentSession.createQuery("from Plate where intro like :content ", Plate.class);
        }
        theQuery.setParameter("content", "%" + contents + "%");
        System.out.println(theQuery.getResultList());
        return theQuery.getResultList();
    }


}

