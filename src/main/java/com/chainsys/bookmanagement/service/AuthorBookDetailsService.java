package com.chainsys.bookmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.compositekey.AuthorBookDetailsCompositeKey;
import com.chainsys.bookmanagement.model.AuthorBookDetails;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.repository.AuthorBookDetailsRepository;

@Service
public class AuthorBookDetailsService {
@Autowired
private AuthorBookDetailsRepository authorbookdetailsrepo;

public List<AuthorBookDetails> getAuthorBookDetails() {
    List<AuthorBookDetails> listAuthorbk =authorbookdetailsrepo.findAll();
    return listAuthorbk;
}
// @Transactional
public AuthorBookDetails save(AuthorBookDetails aubk) {
    return authorbookdetailsrepo.save(aubk);
}
public Optional<AuthorBookDetails> findById(AuthorBookDetailsCompositeKey authorBookDetailsCompositeKey) {
    return authorbookdetailsrepo.findById(authorBookDetailsCompositeKey);
}
//@Transactional
public void deleteById(AuthorBookDetailsCompositeKey id) {
	authorbookdetailsrepo.deleteById(id);
}

public List<AuthorBookDetails> allBooks() {
	return authorbookdetailsrepo.findAll();
}

}
