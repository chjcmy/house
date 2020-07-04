package com.spring.life.dao;

import com.spring.life.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserDAOImpl implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User selectById(String id) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;


        if (id != null && id.trim().length() > 0) {

            // search for firstName or lastName ... case insensitive
            theQuery =currentSession.createQuery("from User where user_id like :theid", User.class);
            theQuery.setParameter("theid", "%" + id.toLowerCase() + "%");

        }
        else {
            // theSearchName is empty ... so just get all customers
            theQuery =currentSession.createQuery("from User", User.class);
        }

        // execute query and get result list
        List<User> customers = theQuery.getResultList();

        // return the results
        return users;
    }
}
