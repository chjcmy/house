package com.spring.life.dao;

import com.spring.life.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAOImpl  implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List login(User user) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;

        //
        // only search by name if theSearchName is not empty
        //
        if (user != null) {

            // search for firstName or lastName ... case insensitive
            theQuery =currentSession.createQuery("from User where user_id like :theName and user_pass like :thepass", User.class);
            theQuery.setParameter("theName", "%" + user.getUser_id() + "%");
            theQuery.setParameter("thepass", "%" + user.getUser_pass() + "%");

        }
        else {
            // theSearchName is empty ... so just get all customers
            theQuery =currentSession.createQuery("from User", User.class);
        }

        List users = theQuery.getResultList();

        System.out.println(users);
        // return the results
        return users;
    }
}
