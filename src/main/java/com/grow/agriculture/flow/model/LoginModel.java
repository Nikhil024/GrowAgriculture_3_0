package com.grow.agriculture.flow.model;

import java.io.Serializable;

import com.grow.agriculture.dto.Image;
import com.grow.agriculture.dto.User;
import com.grow.agriculture.dto.UserDetails;

public class LoginModel implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	
	private User user;
	private Image image;
	private UserDetails userDetails;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Image getImages() {
		return image;
	}
	public void setImages(Image images) {
		this.image = images;
	}
	public UserDetails getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}
	
	@Override
	public String toString() {
		return "LoginModel [user=" + user + ", image=" + image + ", userDetails=" + userDetails + "]";
	}
}
