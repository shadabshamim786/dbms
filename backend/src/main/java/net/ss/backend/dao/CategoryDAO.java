package net.ss.backend.dao;

import java.util.List;

import net.ss.backend.dto.Category;


public interface CategoryDAO {
	
	List<Category> list();
	Category get(int id);

}
