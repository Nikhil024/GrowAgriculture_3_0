package com.grow.agriculture.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "image")
public class Image implements Serializable{
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@SequenceGenerator(name = "image_id", sequenceName = "image_id", allocationSize=1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "image_id")
	private int id;
	private String name;
	private byte[] image;
	
	@Column(name = "image_type")
	private String imageType;
	
	@Column(name = "image_size")
	private long imageSize;
	
	@Temporal(TemporalType.DATE)
	private Date createdOn;
	
	@Temporal(TemporalType.DATE)
	private Date lastUpdatedOn;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getImageType() {
		return imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	public long getImageSize() {
		return imageSize;
	}

	public void setImageSize(long imageSize) {
		this.imageSize = imageSize;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Date getLastUpdatedOn() {
		return lastUpdatedOn;
	}

	public void setLastUpdatedOn(Date lastUpdatedOn) {
		this.lastUpdatedOn = lastUpdatedOn;
	}
}
