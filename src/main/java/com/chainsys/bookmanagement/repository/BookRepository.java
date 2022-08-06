
package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.model.Book;

public interface BookRepository extends CrudRepository<Book,Integer> {
	Book findById(int id);
	//@SuppressWarnings("unchecked")
	Book save(Book book);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<Book> findAll();
	  
}
