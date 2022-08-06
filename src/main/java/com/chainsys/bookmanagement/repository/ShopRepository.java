package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.model.Shop;


public interface ShopRepository  extends CrudRepository<Shop,Integer> {
	Shop findById(int id);
	Shop save(Shop shop);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<Shop> findAll();
}
