package com.chainsys.bookmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.model.Admin;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.repository.AdminRepository;

import oracle.security.o3logon.a;
@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;
	public Admin getUsernamePassword(String name,String password) {
		return adminRepository.findByNameAndPassword(name, password);
	}

	public Admin save(Admin admin) {
		return adminRepository.save(admin);
	}

	public List<Admin> getAllAdmins() {
		List <Admin> admin=(List<Admin>) adminRepository.findAll();
		return admin;
	}
	
}
