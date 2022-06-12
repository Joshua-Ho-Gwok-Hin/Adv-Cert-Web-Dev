package com.aaa.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aaa.exceptions.DuplicateEmailException;
import com.aaa.model.Login;
import com.aaa.model.UserProfile;
import com.aaa.service.LoginService;
import com.aaa.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	public UserService userService;
	
	@Autowired
	public LoginService loginService; 
	
	@GetMapping("/home")
	public ModelAndView homePage() {
		String username = "";
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
        username = ((UserDetails)principal).getUsername();
        }
        
        ModelAndView mav = new ModelAndView("home");
        Login login = loginService.findByUsername(username);
        		
        UserProfile userProfile =  login.getUserProfile(); //userService.getByUsername(username);
        mav.addObject("userProfile",userProfile);
		
		return mav;
	}
	
//	@RequestMapping(value = "/users", method = {RequestMethod.GET}) // Sp
//	public ModelAndView listUsers() {
//		ModelAndView mav = new ModelAndView("list-users");
//		List<UserProfile> userProfiles = userService.findAllUserProfiles();
//		mav.addObject("userProfiles", userProfiles);
//		System.out.println(userProfiles);
//		return mav;
//	}
//	********************************************
//	** View public profile is not working yet **
//	********************************************
	@GetMapping("/public-profile")
	public ModelAndView viewUserProfile(@RequestParam Long id) {
		ModelAndView mav = new ModelAndView("public-profile");
		UserProfile userProfile = userService.get(id);
		mav.addObject("userProfile", userProfile);
		return mav;
	}
	
//	******************************************
//	** Edit user profile is not working yet **
//	******************************************
	@RequestMapping("/update-profile")
	public ModelAndView updateUserProfile(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("update-profile");
		UserProfile userProfile = userService.get(id);
		mav.addObject("userProfile", userProfile);
		return mav;
	}
	
	

//	*******************************
//	** Logout is not working yet **
//	*******************************

	
//	**********************************************
//	** Something is wrong. List without keyword **
//	**********************************************
	@GetMapping("/searchUserProfile")
	public ModelAndView search(@RequestParam String keyword) {
		List<UserProfile> result = userService.search(keyword);
		System.out.println(result);
		ModelAndView mav = new ModelAndView("searchUsers");
		mav.addObject("searchUserResults", result);
		return mav;
	}
	
	@RequestMapping("/searchUserProfile")
	public ModelAndView passId(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("searchUsers");
		UserProfile userProfile = userService.get(id);
		mav.addObject("userProfile", userProfile);
		return mav;
	}

	
//	******************************************
//	** Save user profile is not working yet **
//	******************************************
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	//public ModelAndView updateProfile( @ModelAttribute("user")  UserProfile user) {
	public ModelAndView updateProfile( @ModelAttribute("user")  UserProfile user,  BindingResult result) {
		userService.updateUserProfile(user);
		ModelAndView mav = new ModelAndView("update-success");
		mav.addObject("userProfile", user);
//		return new ModelAndView("public-profile", "firstname", user.getFirstName());
		return mav;
	}
	
//	@RequestMapping(value = "/save", method = RequestMethod.POST)
//	@PostMapping("/save")
//	public String updateProfile(@ModelAttribute("userProfile") UserProfile userProfile) {
////		try {
//			userService.save(userProfile);
////		} catch (DuplicateEmailException e) {
//			// TODO Auto-generated catch block
////			e.printStackTrace();
////		}
//		return "redirect:/";
//	}
	
	@RequestMapping(value = "/addlike", method = RequestMethod.POST)
	public ModelAndView addLike( @ModelAttribute("user")  UserProfile user,  BindingResult result) {
		userService.updateUserProfile(user);
		ModelAndView mav = new ModelAndView("redirect:/");
		mav.addObject("userProfile", user);
		return mav;
	}
	
	
}
