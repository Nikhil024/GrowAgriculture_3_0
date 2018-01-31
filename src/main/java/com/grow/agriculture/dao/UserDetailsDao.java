package com.grow.agriculture.dao;

import java.util.List;

import com.grow.agriculture.dto.UserDetails;

public interface UserDetailsDao {
	boolean save(UserDetails userDetails);
	boolean update(UserDetails userDetails);
	boolean delete(UserDetails userDetails);
	UserDetails get(UserDetails userDetails);
	List<UserDetails> list();
}
