package com.grow.agriculture.dao;

import java.util.List;

import com.grow.agriculture.dto.Image;

public interface ImageDao {
	boolean save(Image image);
	boolean update(Image image);
	boolean delete (Image image);
	List<Image> list();
	Image get(Image image);
}
