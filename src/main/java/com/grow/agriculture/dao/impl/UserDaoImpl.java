package com.grow.agriculture.dao.impl;

import java.util.List;

import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.grow.agriculture.dao.UserDao;
import com.grow.agriculture.dto.User;

@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean save(User user) {
		try {
			sessionFactory.getCurrentSession().persist(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(User user) {
		try {
			sessionFactory.getCurrentSession().delete(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<User> list(){
			return sessionFactory.getCurrentSession().createQuery("FROM User",User.class).getResultList();
	}
	
	@Override
	public User get(String phoneNumber){
		String selectQuery = "FROM User WHERE phone_number = :phoneNumber";
		try{
		return sessionFactory.getCurrentSession().createQuery(selectQuery, User.class).setParameter("phoneNumber", phoneNumber).getSingleResult();
		}catch(NoResultException  e){
			return null;
		}
	}
}
