package com.aaa.service;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.exceptions.DuplicateEmailException;
import com.aaa.model.Login;
import com.aaa.model.UserProfile;
import com.aaa.model.UserType;
import com.aaa.repository.LoginRepository;
import com.aaa.repository.UserRepository;
import com.aaa.repository.UserTypeRepository;

@Service
@Transactional
public class UserService {

	@Autowired
	UserRepository userRepository;
	@Autowired
	LoginRepository loginRepository;
	@Autowired
	UserTypeRepository userTypeRepository;
		
	public UserProfile register(UserProfile userProfile) throws DuplicateEmailException {
		
		Optional<UserType> userType = userTypeRepository.findByUserTypeName("Software Programmers");
		userProfile.setUserType(userType.get());
		
		if (userRepository.findByEmail(userProfile.getEmail())!=null)
			throw new DuplicateEmailException();
		else
			userProfile = userRepository.saveAndFlush(userProfile);
		
		Login login = new Login();
		login.setUsername(userProfile.getUsername()); 
		login.setPassword(userProfile.getPassword());
		login.setUserProfile(userProfile);
		loginRepository.saveAndFlush(login);

		return userProfile;
	}
	
	public Optional<UserProfile> findById(Long id) {
		return userRepository.findById(id);
	}
	
	public void delete(Long id) {
		userRepository.deleteById(id);
	}
		
	public UserProfile get(Long id) {
		return userRepository.findById(id).get();
	}
	
	public List<UserProfile> listAll(){
		return (List<UserProfile>) userRepository.findAll();
	}	
	
	public List<UserProfile> search(String keyword) {
		return userRepository.search(keyword);
	}

	public UserProfile save(UserProfile userProfile) {
		// TODO Auto-generated method stub
		return userRepository.saveAndFlush(userProfile.getId());
	}

	public UserProfile updateUserProfile(UserProfile user) {
		// TODO Auto-generated method stub
		Optional<UserType> userType = userTypeRepository.findByUserTypeName("Software Programmers");
		user.setUserType(userType.get());
    	user = userRepository.saveAndFlush(user);
		
		return user;
		
	}
	public UserProfile findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	
}

//	public UserProfile getByUsername(String username) {
//			// TODO Auto-generated method stub
//		
//		return userRepository.findByUsername(username);
//	}
	
//	public SuccessEmail successEmail(UserProfile receipient) {
//		receipient.setEmail(receipient.getEmail());
//		return recipient;
//	}