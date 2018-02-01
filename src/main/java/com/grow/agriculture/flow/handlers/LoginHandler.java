package com.grow.agriculture.flow.handlers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.grow.agriculture.dao.ImageDao;
import com.grow.agriculture.dao.UserDao;
import com.grow.agriculture.dao.UserDetailsDao;
import com.grow.agriculture.dto.User;
import com.grow.agriculture.flow.model.LoginModel;

@Component
public class LoginHandler {
	private static final Logger log = Logger.getLogger(LoginHandler.class);

	@Autowired
	UserDao userDAO;

	@Autowired
	UserDetailsDao userDetailsDAO;

	@Autowired
	ImageDao imageDAO;

	public LoginModel init() {
		return new LoginModel();
	}

	public String userExists(User user) {
		String userExists = "checkUserExists";
		String userNotExists = "userNotExists";
		User chcekUser = userDAO.get(user.getPhoneNumber().toString());
		if (chcekUser != null && chcekUser.getPhoneNumber() != null) {
			return userExists;
		}
		return userNotExists;
	}

	public User getUser(User user) {
		log.info(user.toString());
		if(user != null){
			return userDAO.get(user.getPhoneNumber());
		}
		return user;
	}

}
