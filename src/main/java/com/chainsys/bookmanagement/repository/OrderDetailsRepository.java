package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.pojo.OrderDetails;

public interface OrderDetailsRepository extends CrudRepository<OrderDetails,Integer> {
	OrderDetails findById(int id);
	OrderDetails save(OrderDetails od);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<OrderDetails> findAll();
	    
	   // int getNextId();
}
