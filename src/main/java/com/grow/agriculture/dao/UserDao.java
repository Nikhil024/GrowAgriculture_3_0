package com.grow.agriculture.dao;

import java.util.List;

import com.grow.agriculture.dto.User;

public interface UserDao {
	boolean save(User user);
	boolean update(User user);
	boolean delete(User user);
	User get(String phoneNumber);
	List<User> list();
}
