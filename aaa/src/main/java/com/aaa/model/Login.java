package com.aaa.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "user_log_in")
public class Login {
	
	@Id    
	private Long id;// 1
	
	@OneToOne(cascade=CascadeType.ALL)
	@MapsId
	@JoinColumn(name="user_id", referencedColumnName="user_id")
	private UserProfile userProfile;
	
//	Should be unique
	@Column(name="username")
	private String username;// 2
	
	@Column(name="password")
	private String password;// 3
	
	@Transient
	@Column(name="last_update")
	private String lastUpdateTime;
	
	@Transient 
	private String confirmPassword;
	
	@Column(name="one_time_password")
	private String oTP;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public UserProfile getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(UserProfile userProfile) {
		this.userProfile = userProfile;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(String lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getoTP() {
		return oTP;
	}

	public void setoTP(String oTP) {
		this.oTP = oTP;
	}
	
	
}