package com.grow.agriculture.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.grow.agriculture.dao.ImageDao;
import com.grow.agriculture.dto.Image;
import com.grow.agriculture.dto.User;

@Transactional
@Repository("imageDAO")
public class ImageDaoImpl implements ImageDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private static final String selectQuery = "FROM Image where user_id=:id";

	@Override
	public boolean save(Image image) {
		try{
			sessionFactory.getCurrentSession().persist(image);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public boolean update(Image image) {
		try{
			sessionFactory.getCurrentSession().update(image);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public boolean delete(Image image) {
		try{
			sessionFactory.getCurrentSession().delete(image);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public List<Image> list() {
		try{
			return sessionFactory.getCurrentSession().createQuery("FROM Image", Image.class).getResultList();
		}catch(Exception e){
			return null;
		}
	}

	@Override
	public Image getProfile(User user) {
		try{
			return sessionFactory.getCurrentSession().createQuery(selectQuery, Image.class).setParameter("id", user.getId()).getSingleResult();
		}catch(Exception e){
			return null;
		}
	}
	
	@Override
	public Image getNotProfile(User user) {
		try{
			return sessionFactory.getCurrentSession().createQuery(selectQuery, Image.class).setParameter("id", user.getId()).getSingleResult();
		}catch(Exception e){
			return null;
		}
	}

}
