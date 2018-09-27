 package net.ss.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.ss.backend.dao.CategoryDAO;
import net.ss.backend.dto.Category;



@Repository("categoryDAO")

public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	
	
	static {
		
		Category category = new Category();
		
		category.setCategoryid(1);
		category.setName("Dining Table");
		category.setDescription("Description of Dining Table Accessories.");
		category.setImageURL("ABC1.png");
		categories.add(category);
		
		
		//2
		category = new Category();
		
		category.setCategoryid(2);
		category.setName("Kitchen Sink");
		category.setDescription("Description of Kitchen Sink Accessories.");
		category.setImageURL("ABC2.png");
		categories.add(category);
		
		
category = new Category();
		
		category.setCategoryid(3);
		category.setName("Cookware");
		category.setDescription("Description of Cookware Accessories.");
		category.setImageURL("ABC3.png");
		categories.add(category);
		
	}
	
	
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}



	@Override
	public Category get(int id) {
		for(Category category : categories)
		{
			if(category.getCategoryid()==id) 
				return category;
		}
		
		
		return null;
	}

}
