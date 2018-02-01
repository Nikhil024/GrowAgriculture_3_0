package com.grow.agriculture.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.grow.agriculture.dao.UserDetailsDao;
import com.grow.agriculture.dto.User;
import com.grow.agriculture.dto.UserDetails;

@Transactional
@Repository("userDetailsDAO")
public class UserDetailsDaoImpl implements UserDetailsDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean save(UserDetails userDetails) {
		try{
			sessionFactory.getCurrentSession().persist(userDetails);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public boolean update(UserDetails userDetails) {
		try{
			sessionFactory.getCurrentSession().update(userDetails);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public boolean delete(UserDetails userDetails) {
		try{
			sessionFactory.getCurrentSession().delete(userDetails);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public UserDetails get(User user) {
		try{
			return sessionFactory.getCurrentSession().createQuery("FROM user_details WHERE user_id=:id",UserDetails.class).setParameter("id", user.getId()).getSingleResult();
		}catch(Exception e){
			return null;
		}
	}

	@Override
	public List<UserDetails> list() {
		try{
			return sessionFactory.getCurrentSession().createQuery("FROM user_details",UserDetails.class).getResultList();
		}catch(Exception e){
			return null;
		}
	}

}
