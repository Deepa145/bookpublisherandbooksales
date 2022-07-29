package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.pojo.Book;

public interface BookRepository extends CrudRepository<Book,Integer> {
	Book findById(int id);
	Book save(Book bk);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<Book> findAll();
}
