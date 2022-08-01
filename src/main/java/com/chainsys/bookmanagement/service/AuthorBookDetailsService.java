package com.chainsys.bookmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.pojo.AuthorBookDetails;
import com.chainsys.bookmanagement.repository.AuthorBookDetailsRepository;

@Service
public class AuthorBookDetailsService {
@Autowired
private AuthorBookDetailsRepository authorbookdetailsrepo;
public List<AuthorBookDetails> getallAuthorBookDetails() {
    List<AuthorBookDetails> listAuthorbk = authorbookdetailsrepo.findAll();
    return listAuthorbk;
}
// @Transactional
public AuthorBookDetails save(AuthorBookDetails aubk) {
    return authorbookdetailsrepo.save(aubk);
}
public AuthorBookDetails findById(int id) {
    return authorbookdetailsrepo.findById(id);
}
//@Transactional
public void deleteById(int id) {
	authorbookdetailsrepo.deleteById(id);
}
}
