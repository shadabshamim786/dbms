package net.ss.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.ss.backend.dao.CategoryDAO;
import net.ss.backend.dao.ProductDAO;
import net.ss.backend.dto.Category;
import net.ss.backend.dto.Product;

@Controller
public class PageController {
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	

	@RequestMapping(value= {"/home","/","/index"})
	public ModelAndView hello() {
		ModelAndView ret = new ModelAndView("page");
		// Adds an objet to be used in home.jsp
		ret.addObject("titler", "Home");
		
		//Passing List of Category
 		ret.addObject("categories", categoryDAO.list());
				
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
	
	//ALL Stuffs
	@RequestMapping(value= {"/all/stuffs"})
	public ModelAndView AllStuffs() {
		ModelAndView ret = new ModelAndView("page");
		// Adds an objet to be used in home.jsp
		ret.addObject("titler", "All Stuffs");
		
		//Passing List of Category
 		ret.addObject("categories", categoryDAO.list());
				
		ret.addObject("AllStuffs", true);
		return ret; 
	}
	
	
	//Category Stuffs
		@RequestMapping(value= {"/category/{id}/stuffs"})
		public ModelAndView CategoryStuffs(@PathVariable("id") int id) {
			ModelAndView ret = new ModelAndView("page");
			// Adds an object to be used in home.jsp
			
			Category category=null;
			category=categoryDAO.get(id);
			
			//Adding category title to titler 
			ret.addObject("titler", category.getName());
			
			//Passing the Category with given ID.
			ret.addObject("category", category);
			
			//Passing List of Category
	 		ret.addObject("categories", categoryDAO.list());
					
			ret.addObject("CategoryStuffs", true);
			return ret; 
		}
	
	//single product
		@RequestMapping(value= {"/show/{id}/stuff"})
		public ModelAndView SIngleStuffs(@PathVariable int id) {
			ModelAndView ret = new ModelAndView("page");
			// Adds an objet to be used in home.jsp
			
			Product product=new Product();
			product=productDAO.get(id);
			
			ret.addObject("titler", product.getName());
			
			//Passing List of Category
	 		ret.addObject("product", productDAO.get(id));
					
			ret.addObject("SingleStuff", true);
			return ret; 
		}	
		
}
