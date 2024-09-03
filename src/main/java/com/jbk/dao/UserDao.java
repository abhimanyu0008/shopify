package com.jbk.dao;

import java.util.List;

import com.jbk.entity.User;

public interface UserDao {
	 void save(User user);
	    User findByUsername(String username);
	    User findByEmail(String email);
	    List<User> findAll();
}
