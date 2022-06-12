package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aaa.model.KEDB;
import com.aaa.model.UserProfile;
import com.aaa.service.KEDBService;
import com.aaa.service.UserService;

@Controller
public class KEDBController {
	@Autowired
	private KEDBService kedbService;
	
	private UserService userService;
	
	@RequestMapping("/kedb")
	public ModelAndView kedb() {
		List<KEDB> listKEDB = kedbService.listAll();
		ModelAndView mav = new ModelAndView("kedb");
		mav.addObject("allKEDB", listKEDB);

		System.out.println("List Obj is " + listKEDB);
		return mav;
	}
	
	@RequestMapping("/searchKedb")
	public ModelAndView search(@RequestParam String keyword) {
		List<KEDB> result = kedbService.search(keyword);
		ModelAndView mav = new ModelAndView("kedb");
		mav.addObject("allKEDB", result);
		
		return mav;		
	}
}
