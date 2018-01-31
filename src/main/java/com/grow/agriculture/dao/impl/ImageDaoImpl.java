package com.grow.agriculture.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.grow.agriculture.dao.ImageDao;
import com.grow.agriculture.dto.Image;

@Transactional
@Repository("imageDAO")
public class ImageDaoImpl implements ImageDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean save(Image image) {
		
		return false;
	}

	@Override
	public boolean update(Image image) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Image image) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Image> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Image get(Image image) {
		// TODO Auto-generated method stub
		return null;
	}

}
