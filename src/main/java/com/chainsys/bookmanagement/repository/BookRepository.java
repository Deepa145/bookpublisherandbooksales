package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.pojo.Book;
import com.chainsys.bookmanagement.pojo.OrderDetails;

public interface BookRepository extends CrudRepository<Book,Integer> {
	Book findById(int id);
	//@SuppressWarnings("unchecked")
	Book save(OrderDetails orderDetails);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<Book> findAll();
	   // @query()
		int getNextId();
}
