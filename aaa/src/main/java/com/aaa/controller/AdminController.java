package com.aaa.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aaa.model.UserProfile;
import com.aaa.service.UserService;

@Controller
public class AdminController {
	private Logger logger = LogManager.getLogger(LoginController.class);
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/admin")
	public String admin() {
		logger.debug("Entering admin action");
		return "admin";
	}
	
	
		
	@GetMapping("admin-sitemap")
	public String adminSitemap() {
		return "admin-sitemap";
	}
	
	@GetMapping("/admin-email")
	public String adminEmail() {
		return "admin-email";
	}
	
	@GetMapping("/admin-search")
	public ModelAndView adminSearch(@RequestParam String keyword) {
		List<UserProfile> result = userService.search(keyword);
		System.out.println(result);
		ModelAndView mav = new ModelAndView("admin-search");
		mav.addObject("appearInSearchResult", result);
		return mav;
	}
	
	@GetMapping("/list-all")
	public ModelAndView listAllProfile() {
		List<UserProfile> result = userService.listAll();
		ModelAndView mav = new ModelAndView("admin-search");
		mav.addObject("appearInSearchResult", result);
		System.out.println(result);
		return mav;
	}

	
//	********************************************
//	** Need to show "User is deleted" message **
//	********************************************
	@RequestMapping("/admin-delete")
	public String deleteUser(@RequestParam long id) {
		userService.delete(id);
		return "redirect:/";	
	}
	
//	**********************************
//	** Save profile not yet working **
//	**********************************
	
	
	
	
	
	
	@RequestMapping("/admin-edit")
	public ModelAndView editUserForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin-edit");
		UserProfile userProfile = userService.get(id);
		mav.addObject("userProfile", userProfile);
		return mav;
	}

	
}
