package com.aaa.config;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;

import com.aaa.auth.UserDetailsServiceImpl;

// Error creating bean with name 'conversionServicePostProcessor' defined in class path resource [org/springframework/security/config/annotation/web/configuration/WebSecurityConfiguration.class]: Bean instantiation via factory method failed; nested exception is org.springframework.beans.BeanInstantiationException: Failed to instantiate [org.springframework.beans.factory.config.BeanFactoryPostProcessor]: Factory method 'conversionServicePostProcessor' threw exception; nested exception is java.lang.NoSuchMethodError: org.springframework.core.convert.converter.Converter.andThen(Lorg/springframework/core/convert/converter/Converter;)Lorg/springframework/core/convert/converter/Converter;'
//Spring form return null value with security


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	System.out.println("At Authen configure");
        auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
 
    	System.out.println("At Security configure");
        http
        		
                .formLogin()
                    .loginPage("/showLogin")
                    .loginProcessingUrl("/login")
                    .failureUrl("/login-error")
                    .permitAll()
                    .defaultSuccessUrl("/home", true)
                .and()
                .csrf()
                .and()
                .authorizeRequests()
                    .antMatchers("/").permitAll()
                    .antMatchers("/css/**").permitAll()
                    .antMatchers("/images/**").permitAll()
                    .antMatchers("/js/**").permitAll()
                    .antMatchers(HttpMethod.GET, "/favicon.*").permitAll()
                    .antMatchers(HttpMethod.GET, "/home").hasAnyRole("ABC Administrators","Software Programmers")
                    
                    .antMatchers(HttpMethod.GET, "/login").permitAll()
                    .antMatchers(HttpMethod.POST, "/login").permitAll()
                    .antMatchers(HttpMethod.GET, "/login-error").permitAll()
                    .antMatchers(HttpMethod.GET, "/users").hasAnyRole("ABC Administrators","Software Programmers")
                    .antMatchers(HttpMethod.GET,"/adminUsers").hasRole("ABC Administrators")
                    .antMatchers(HttpMethod.POST,"/adminUsers").hasRole("ABC Administrators")
                .and()
                .logout()
                    .logoutSuccessUrl("/showLogin")
                    .invalidateHttpSession(true)
                    .deleteCookies("PortalSession");
    }
}
