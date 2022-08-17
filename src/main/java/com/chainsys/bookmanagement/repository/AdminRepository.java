package com.chainsys.bookmanagement.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.bookmanagement.model.Admin;
@Repository
public interface AdminRepository extends CrudRepository<Admin,Integer> {
	Admin findByNameAndPassword(String name , String password);

	Admin save(Admin admin);
}
