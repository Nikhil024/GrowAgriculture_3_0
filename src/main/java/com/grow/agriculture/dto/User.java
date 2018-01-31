package com.grow.agriculture.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.AssertTrue;
<<<<<<< HEAD
import javax.validation.constraints.NotNull;
=======
>>>>>>> 283fa99dc1e3c940e84fae5230c23f237b069514

import org.hibernate.annotations.Check;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import com.grow.agriculture.custom.annotations.Matches;

@Entity
@Table(name = "users")
@Matches(field="password", verifyField="confirmPassword")
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@SequenceGenerator(name = "user_id", sequenceName = "user_id", allocationSize=1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id")
	private int id;
	
	@NotBlank(message = "Please enter the Name")
	private String name;
	
	@NotBlank(message = "Please enter the Phone number")
	@Column(name = "phone_number")
	private String phoneNumber;
	
	@Length(min = 6, max = 25, message = "Please enter a password more than 6 letters")
	private String password;
	
	@Transient

	@Length(min = 6, max = 25, message = "Please enter a password more than 6 letters")
	private String confirmPassword;
	
	@Column(name = "terms_and_conditions")
	@Length(min = 2, message = "Please accept the Terms and Conditions")
	private String termsAndConditions;
	
	@Column(nullable = false)
	private String role;
	
	@Column(name = "otp_verified")
	private int otpVerified;
	
	@Column(name = "created_date")
	private String createdOn;
	
	@Column(name = "last_update")
	@Temporal(TemporalType.DATE)
	private Date lastUpdatedOn;

	@OneToOne(mappedBy="user", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	UserDetails userDetails; 
	
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getTermsAndConditions() {
		return termsAndConditions;
	}

	public void setTermsAndConditions(String termsAndConditions) {
		this.termsAndConditions = termsAndConditions;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getOtpVerified() {
		return otpVerified;
	}

	public void setOtpVerified(int otpVerified) {
		this.otpVerified = otpVerified;
	}

	public String getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}

	public Date getLastUpdatedOn() {
		return lastUpdatedOn;
	}

	public void setLastUpdatedOn(Date lastUpdatedOn) {
		this.lastUpdatedOn = lastUpdatedOn;
	}
	
	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", phoneNumber=" + phoneNumber + ", password=" + password
				+ ", confirmPassword=" + confirmPassword + ", termsAndConditions=" + termsAndConditions + ", role="
				+ role + ", otpVerified=" + otpVerified + ", createdOn=" + createdOn + ", lastUpdatedOn="
				+ lastUpdatedOn + ", userDetails=" + userDetails + "]";
	}
}
