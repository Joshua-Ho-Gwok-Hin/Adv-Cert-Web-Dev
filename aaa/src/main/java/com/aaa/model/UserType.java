package com.aaa.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "user_type")
public class UserType {
	@Id   
	@Column(name="user_type_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long userTypeId;
	
	@Column(name="user_type_name")
	private String userTypeName;
	
	@OneToMany( mappedBy="userType", cascade = CascadeType.ALL)
	private Set<UserProfile> userProfiles = new HashSet<>();

	public String getUserTypeName() {
		return userTypeName;
	}

	public void setUserTypeName(String userTypeName) {
		this.userTypeName = userTypeName;
	}

	public Set<UserProfile> getUserProfiles() {
		return userProfiles;
	}

	public void setUserProfiles(Set<UserProfile> userProfiles) {
		this.userProfiles = userProfiles;
	}

	public long getUserTypeId() {
		return userTypeId;
	}

	public void setUserTypeId(long userTypeId) {
		this.userTypeId = userTypeId;
	}

	

	public Set<UserProfile> getUserProfile() {
		return userProfiles;
	}

	public void setUserProfile(Set<UserProfile> userProfile) {
		this.userProfiles = userProfile;
	}
}
