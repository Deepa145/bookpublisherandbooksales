package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.pojo.Authors;

public interface AuthorsRepository  extends CrudRepository<Authors,Integer>  {
	Authors findById(int id);
	Authors save(Authors au);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<Authors> findAll();
}


