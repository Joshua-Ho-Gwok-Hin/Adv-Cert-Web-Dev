package com.aaa.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.aaa.exceptions.DuplicateEmailException;
import com.aaa.model.UserProfile;
import com.aaa.service.UserService;

@Controller
public class IndexController {
	
	@Autowired
	public UserService userService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/index")
	public String showIndex() {
		return "redirect:/";
	}
	
//	@RequestMapping("/home")
//	public String showHome() {
//		return "home";
//	}
	
	@RequestMapping("/sitemap")
	public String showSitemap() {
		return "sitemap";
	}
	
	@GetMapping("/thank-you")
	public String showThankYou() {
		return "thank-you";
	}
	
	@GetMapping("/error")
	public String showRegisterError() {
		return "register-fail";
	}
	
	@GetMapping("/forgot-password")
	public String showForgetPassword() {
		return "forgot-password";
	}
	
	@RequestMapping(value="/showRegister", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView newRegistration() {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("userProfile", new UserProfile());
		return mav;
	}
	
//	@RequestMapping(value = "/processReset", method = {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView sendResetEmail( @ModelAttribute("userProfile")  UserProfile userProfile) {
//		ModelAndView mav = null;
//		
//		UserProfile resetUser = userService.findByEmail(userProfile.getEmail());
//		System.out.println(resetUser);
//		if(!resetUser.isEmpty() || resetUser.get() == null) {
//			mav= new ModelAndView("forgot-password");
//			mav.addObject("message", "Sorry, we couldn't find an account with that email address.");
//		}else {
//			UserProfile dbUser = resetUser.get();
//			dbUser.setPassword(userProfile.getPassword());
//			userService.save(dbUser);
//			mav = new ModelAndView("login");
//		}
//		return mav;
//	}
	
	
	@RequestMapping(value = "/register", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView registerUser( @ModelAttribute("userProfile")  UserProfile userProfile,  BindingResult result) {
		try {
			userService.register(userProfile);
			return new ModelAndView("thank-you", "firstName", userProfile.getFirstName());
		}catch (DuplicateEmailException e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("register");
			mav.addObject("duplicateEmail", e.getMessage());
			return mav ;
		}
	}
	
		
//	*************************************************
//	** Need to show "error" is registration failed **
//	*************************************************
		
	
}