
package com.grow.agriculture.flow.handlers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.grow.agriculture.dao.UserDao;
import com.grow.agriculture.dao.UserDetailsDao;
import com.grow.agriculture.dto.User;
import com.grow.agriculture.dto.UserDetails;
import com.grow.agriculture.flow.model.RegisterModel;

@Component
public class RegisterHandler {
	private static final Logger log = LoggerFactory.getLogger(RegisterHandler.class);
	
	@Autowired
	UserDao userDao;
	
	public RegisterModel init() {
		return new RegisterModel();
	}

	
	public UserDetails addUser(RegisterModel registerModel, User user) {
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date date = new Date();
		user.setCreatedOn(dateFormat.format(date));
		registerModel.setUser(user);
		UserDetails userDetails = new UserDetails();
		userDetails.setFirstName(user.getName());
		return userDetails;
	}
	
	public void addUserDetails(RegisterModel registerModel, UserDetails userDetails) {
		registerModel.setUserDetails(userDetails);
		
	}
	
	public String saveAll(RegisterModel model) {
		String transactionValue = "success";
		
		User user = model.getUser();
		UserDetails userDetails = model.getUserDetails();
		user.setUserDetails(userDetails);
		userDetails.setUser(user);
		userDao.save(user);
		
		log.info(user.toString());
		log.info(userDetails.toString());
		
		return transactionValue;
	}
	
	public String userExists(User user){
		String userExists = "checkUserExists";
		String userNotExists = "userNotExists";
		User chcekUser = userDao.get(user.getPhoneNumber().toString());
		
		if(chcekUser != null && chcekUser.getPhoneNumber() != null){
			return userExists;
		}
			return userNotExists;
	}
	
}
