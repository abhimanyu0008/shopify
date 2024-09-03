package com.jbk.servic;

import com.jbk.entity.User;

public interface UserService {

	   void register(User user);
	    User login(String username, String password);
	    boolean userExists(String username);
	    boolean emailExists(String email);
}
