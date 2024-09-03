package com.jbk.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.entity.User;

@Repository
public class UserDaoImp implements UserDao {

	@Autowired
	private SessionFactory factory;
	@Override
	public void save(User user) {
		Session session = factory.openSession();
        session.saveOrUpdate(user);
		
	}

	@Override
	public User findByUsername(String username) {
		Session session = factory.openSession();
        return session.createQuery("from User where username=:username", User.class)
                      .setParameter("username", username)
                      .uniqueResult();
	}

	@Override
	public User findByEmail(String email) {
		Session session = factory.openSession();
        return session.createQuery("from User where email=:email", User.class)
                      .setParameter("email", email)
                      .uniqueResult();
	}

	@Override
	public List<User> findAll() {
		  Session session = factory.openSession();
	        return session.createQuery("from User", User.class).list();
	}
}

	
