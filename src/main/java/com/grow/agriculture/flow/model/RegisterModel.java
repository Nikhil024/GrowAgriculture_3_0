package com.grow.agriculture.flow.model;

import java.io.Serializable;

import com.grow.agriculture.dto.User;
import com.grow.agriculture.dto.UserDetails;

public class RegisterModel implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private User user;
	private UserDetails userDetails;

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserDetails getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}
	
	@Override
	public String toString() {
		return "RegisterModel [user=" + user + ", userDetails=" + userDetails + "]";
	}
}
