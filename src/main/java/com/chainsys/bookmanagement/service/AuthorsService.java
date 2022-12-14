package com.chainsys.bookmanagement.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.model.Authors;
import com.chainsys.bookmanagement.repository.AuthorsRepository;

@Service
public class AuthorsService {
@Autowired
private AuthorsRepository authorsrepo;


public List<Authors> getAuthors() {
    return authorsrepo.findAll();
}
// @Transactional
public Authors save(Authors au) {
    return authorsrepo.save(au);
}
public Authors findById(int id) {
    return authorsrepo.findById(id);
}
//@Transactional
public void deleteById(int id) {
	authorsrepo.deleteById(id);
}

public List<Authors> allAuthors(){
	return authorsrepo.findAll();
}

}

