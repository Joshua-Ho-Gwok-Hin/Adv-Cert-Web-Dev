package com.aaa.controller;

import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.aaa.model.Login;
import com.aaa.model.UserProfile;
import com.aaa.service.LoginService;
import com.aaa.service.UserService;

@Controller
public class LoginController {
	private Logger logger = LogManager.getLogger(LoginController.class);
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	UserService userService;
	
	@GetMapping(value="/forgotPassword")
	public String forget() {
		return "forgotPassword";
	}

	@RequestMapping(value = "/showLogin", method = RequestMethod.GET)
	public ModelAndView showLogin() {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());
		return mav;
	}

	@RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView loginProcess(@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		Optional<Login> loginUser = loginService.isValidUser(login);
		if (loginUser == null || !loginUser.isPresent()) {
			mav = new ModelAndView("login");
			mav.addObject("errMsg", "Username or Password is wrong!!");
		} else {
			Optional<UserProfile> userProfile = userService.findById(loginUser.get().getUserProfile().getId());
			mav = new ModelAndView("home");
			mav.addObject("userProfile", userProfile.get());
			mav.addObject("id", userProfile.get().getId());
//			mav.addObject("firstName", userProfile.get().getFirstName());
//			mav.addObject("lastName", userProfile.get().getLastName());
		}
		return mav;
	}

	@RequestMapping(value = "/login-error", method = RequestMethod.GET)
	public ModelAndView onLoginError(@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		mav = new ModelAndView("login");
		mav.addObject("errMsg", "Username or Password is wrong!!");
		return mav;
	}
}




