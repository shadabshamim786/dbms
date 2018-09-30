package net.ss.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.ss.backend.dao.ProductDAO;
import net.ss.backend.dto.Product;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/all/stuffs")
	@ResponseBody
	public List<Product> getAllProduct(){
		return productDAO.listActiveProducts();
	}
	
	@RequestMapping("/category/{id}/stuffs")
	@ResponseBody
	public List<Product> getProductByCategory(@PathVariable int id){
		return productDAO.listActiveProductsByCategory(id);
	}
	
	
}
