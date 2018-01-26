package com.grow.agriculture.dao;

import com.grow.agriculture.dto.User;

public interface UserDao {
	boolean save(User user);
	boolean update(User user);
	boolean delete(User user);
}
