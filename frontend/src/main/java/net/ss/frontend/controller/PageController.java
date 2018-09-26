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
				
		ret.addObject("userClickHome", true);
		return ret; 
	}
	
	
}
