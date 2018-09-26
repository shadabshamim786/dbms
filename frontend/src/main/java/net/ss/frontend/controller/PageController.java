package net.ss.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value= {"/home","/","/index"})
	public ModelAndView hello() {
		ModelAndView ret = new ModelAndView("page");
		// Adds an objet to be used in home.jsp
		ret.addObject("titler", "Home");
		
		//Passing List of Category
//		ret.addObject("categories", categoryDAO.list());
				
		ret.addObject("HOME", true);
		return ret; 
	}
	
	
	@RequestMapping(value= "/about")
	public ModelAndView about() {
		ModelAndView ret = new ModelAndView("page");
		// Adds an objet to be used in home.jsp
		ret.addObject("titler", "About Us");
		
		//Passing List of Category
//		ret.addObject("categories", categoryDAO.list());
				
		ret.addObject("ABOUT", true);
		return ret; 
	}
	
	
	@RequestMapping(value= "/contactus")
	public ModelAndView contact() {
		ModelAndView ret = new ModelAndView("page");
		// Adds an objet to be used in home.jsp
		ret.addObject("titler", "Contact Us");
		
		//Passing List of Category
//		ret.addObject("categories", categoryDAO.list());
				
		ret.addObject("CONTACT", true);
		return ret; 
	}
	
}
