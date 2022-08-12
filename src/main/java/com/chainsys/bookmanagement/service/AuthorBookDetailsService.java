package com.chainsys.bookmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.compositekey.AuthorBookDetailsCompositeKey;
import com.chainsys.bookmanagement.model.AuthorBookDetails;
import com.chainsys.bookmanagement.repository.AuthorBookDetailsRepository;

@Service
public class AuthorBookDetailsService {
@Autowired
private AuthorBookDetailsRepository authorbookdetailsrepo;

public List<AuthorBookDetails> getAuthorBookDetails() {
    List<AuthorBookDetails> listAuthorbk =authorbookdetailsrepo.findAll();
    return listAuthorbk;
}
public List<AuthorBookDetails> getAuthorBookDetailsByBookId(int bookId) {
    List<AuthorBookDetails> listAuthorbk =authorbookdetailsrepo.findByBookId(bookId);
    System.out.println("debug : from AuthorBookDetailsService.getAuthorBookDetailsByBookId "+listAuthorbk.size());
    return listAuthorbk;
}
public List<AuthorBookDetails> getAuthorBookDetailsByAuthorId(int authorId) {
    List<AuthorBookDetails> listAuthorbk =authorbookdetailsrepo.findByAuthorId(authorId);
    System.out.println("debug : from AuthorBookDetailsService.getAuthorBookDetailsByAuthorId "+listAuthorbk.size());
    return listAuthorbk;
}
public AuthorBookDetails save(AuthorBookDetails aubk) {
    return authorbookdetailsrepo.save(aubk);
}

public Optional<AuthorBookDetails> findById(AuthorBookDetailsCompositeKey authorBookDetailsCompositeKey) {
	Optional<AuthorBookDetails> foundDetails = authorbookdetailsrepo.findById(authorBookDetailsCompositeKey);
	return foundDetails;
}
public void deleteById(AuthorBookDetailsCompositeKey id) {
	authorbookdetailsrepo.deleteById(id);
}

public List<AuthorBookDetails> allBooks() {
	return authorbookdetailsrepo.findAll();
}

}
