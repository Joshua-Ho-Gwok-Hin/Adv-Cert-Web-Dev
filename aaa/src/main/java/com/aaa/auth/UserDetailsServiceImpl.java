package com.aaa.auth;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.aaa.model.Login;
import com.aaa.service.LoginService;


import javax.transaction.Transactional;

@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private LoginService loginService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public UserDetailsServiceImpl() {
    }

    /*
     * Default Authentication mechanism calls this method to get UserDetails by the name given at the time of login.
     * This method returns UserDetails with password and roles he/she plays.
     * Spring then verifies the password given by the user with this password and authenticates the user.
     */
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    	
        Login login = loginService.findByUsername(username);
        if(login == null) {
            throw new UsernameNotFoundException("Login User " + username + " is not valid. Please re-enter.");
        }
        org.springframework.security.core.userdetails.User.UserBuilder userBuilder = org.springframework.security.core.userdetails.User.builder();
        
                
        String userType = login.getUserProfile().getUserType().getUserTypeName();
        
        System.out.println("Role Name is "+ userType);
        
        return userBuilder.username(login.getUsername())
                        .password(login.getPassword())
                        .roles(userType)
                        .passwordEncoder(passwordEncoder::encode)
                        .build();
    }
}
