package com.poly.interfaceDAO;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Product;
import com.poly.entity.Report;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
	List<Product> findByPrice(double minPrice, double maxPrice);
	
	List<Product> findByPriceBetween(double minPrice,double maxPrice);

	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
	
	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	

	@Query("SELECT new Report(o.category, sum(o.price), count(o)) " + " FROM Product o " + " GROUP BY o.category.id"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();
	
	
	
	Page<Product> findAllByIdIs(Integer keywords, Pageable pageable);
	
	Page<Product> findAllByPriceIs(Double keywords, Pageable pageable);
	
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1 or o.id LIKE ?1 or o.price LIKE ?1")
	Page<Product> findByKeywordss(String keywords, Pageable pageable);
}

//	@Query(value = "SELECT * FROM Product WHERE Price BETWEEN ?1 AND ?2",nativeQuery = true)
//	List<Product> findByPrice(double minPrice,double maxPrice);

