package net.ss.backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.ss.backend.dao.ProductDAO;
import net.ss.backend.dto.Product;

public class ProductTestCase {
	
	private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	private Product product;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.ss.backend");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
	}

//	@Test
//	public void testCRUDProduct() {
//		
//		// create operation
//		product = new Product();
//				
//		product.setName("Room Essentials");
//		product.setBrand("Milton");
//		product.setDescription("This is some description for Plastic 2pc Mixing Bowl Set with Lid Aqua - Room Essentials");
//		product.setPrice(550);;
//		product.setActive(true);
//		product.setCategoryID(3);
//		product.setSupplierID(2);
//		product.setQuantity(13);
//		product.setImageURL("prod7.png");
//		product.setMaterial("Polypropylene");
//		product.setColor("White");
//		product.setPurchases(0);
//		product.setSize("3.88 inches");
//				
//		assertEquals("Something went wrong while inserting a new product!",
//				true,productDAO.add(product));		
//		
//		
//		// reading and updating the category
//		product = productDAO.get(11);
//		product.setName("Plastic 2pc Mixing Bowl Set with Lid Aqua - Room Essentials");
//		assertEquals("Something went wrong while updating the existing record!",
//				true,productDAO.update(product));		
//				
//		assertEquals("Something went wrong while deleting the existing record!",
//				true,productDAO.delete(product));		
//		
//		// list
//		assertEquals("Something went wrong while fetching the list of products!",
//				6,productDAO.list().size());		
//				
//	}
	
	@Test
	public void testListActiveProducts() {
		//System.out.println(productDAO.listActiveProducts().size());
		assertEquals("Something went wrong while fetching the list of products!",
				5,productDAO.listActiveProducts().size());				
	} 
	
	
	@Test
	public void testListActiveProductsByCategory() {
		assertEquals("Something went wrong while fetching the list of products!",
				1,productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Something went wrong while fetching the list of products!",
				3,productDAO.listActiveProductsByCategory(2).size());
	} 
}

