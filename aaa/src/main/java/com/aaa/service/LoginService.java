package com.aaa.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.model.Login;
import com.aaa.repository.LoginRepository;

@Service
@Transactional
public class LoginService{

	@Autowired
	LoginRepository loginRepository;
	
	public Login findByUsername(String username) {
		return loginRepository.findByUsername(username);
	}
	
	public Optional<Login> isValidUser(Login login) {
		return loginRepository.findByUsernameAndPassword(login.getUsername(), login.getPassword());
	}
	
}