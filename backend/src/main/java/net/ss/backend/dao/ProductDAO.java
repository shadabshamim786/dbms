package net.ss.backend.dao;

import java.util.List;

import net.ss.backend.dto.Product;

public interface ProductDAO {
	
	
	Product get(int id);
	List<Product> list();
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
	List<Product> listActiveProducts();	
	List<Product> listActiveProductsByCategory(int categoryId);

}
