package com.poly.interfaceDAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, String>{}