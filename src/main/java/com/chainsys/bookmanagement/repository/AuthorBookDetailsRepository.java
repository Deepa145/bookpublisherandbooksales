package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.pojo.AuthorBookDetails;


public interface AuthorBookDetailsRepository extends CrudRepository<AuthorBookDetails,Integer> {
	AuthorBookDetails findById(int id);
	AuthorBookDetails save(AuthorBookDetails abd);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<AuthorBookDetails> findAll();
}