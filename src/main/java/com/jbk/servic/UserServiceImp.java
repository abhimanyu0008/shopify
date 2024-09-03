package com.jbk.servic;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.UserDao;
import com.jbk.entity.User;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	private UserDao dao;

	@Override
	public void register(User user) {
		 if (!userExists(user.getUsername()) && !emailExists(user.getEmail())) {
	           dao.save(user);
	        }
		
	}

	@Override
	public User login(String username, String password) {
		 User user = dao.findByUsername(username);
	        if (user != null && user.getPassword().equals(password)) {
	            return user;
	        }
	        return null;
	}

	@Override
	public boolean userExists(String username) {
		 return dao.findByUsername(username) != null;
	}

	public boolean emailExists(String email) {
		 return dao.findByEmail(email) != null;
	}

	
}
