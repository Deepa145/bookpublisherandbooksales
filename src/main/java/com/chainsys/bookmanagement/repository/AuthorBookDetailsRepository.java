package com.chainsys.bookmanagement.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.compositekey.AuthorBookDetailsCompositeKey;
import com.chainsys.bookmanagement.model.AuthorBookDetails;

public interface AuthorBookDetailsRepository extends CrudRepository<AuthorBookDetails, AuthorBookDetailsCompositeKey> {

	AuthorBookDetails save(AuthorBookDetails abd);

	// Used for adding new Book
	void deleteById(AuthorBookDetailsCompositeKey id);

	List<AuthorBookDetails> findAll();
	
	List<AuthorBookDetails> findByBookId(int bookId);
	List<AuthorBookDetails> findByAuthorId(int authorId);
}