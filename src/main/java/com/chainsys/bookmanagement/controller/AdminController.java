package com.chainsys.bookmanagement.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.bookmanagement.model.Admin;
import com.chainsys.bookmanagement.model.AuthorBookDetails;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.service.AdminService;
import com.chainsys.bookmanagement.service.AuthorBookDetailsService;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("/bookAdmin")
public class AdminController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private AuthorBookDetailsService aubkservice;

	@GetMapping("/index")
	public String webAppp(Model model) {
		List<AuthorBookDetails> allAuthorBookDetails = aubkservice.getAuthorBookDetails();
		model.addAttribute("allauthorbookdetails", allAuthorBookDetails);
		return "allpages";
	}

	@GetMapping("/adminlogin")
	public String adminaccessform(Model model) {
		Admin admin = new Admin();
		model.addAttribute("admin", admin);
		return "admin-login";
	}

	@PostMapping("/checkadminlogin")
	public String checkingAccess(@ModelAttribute("admin") Admin user,Model model) {
		Admin admin = adminService.getUsernamePassword(user.getName(), user.getPassword());
		if (admin != null) {

			return "redirect:/bookAdmin/index";
		} else {
			model.addAttribute("result","Invalid username and password");
		}
			return "admin-login";
	}

	@GetMapping("/adminlist")
	public String getAllAdmins(Model model) {
		List<Admin> admins = adminService.getAllAdmins();
		model.addAttribute("alladmins", admins);
		return "list-admins";
	}

	@GetMapping("/addadmin")
	public String showAddForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("addadmins", admin);
		return "add-admin-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewAdmin(@ModelAttribute("addadmins") Admin admin, Errors error) {
		if (error.hasErrors()) {
			return "add-admin-form";
		}
		adminService.save(admin);
		return "redirect:/bookAdmin/adminlist";
	}

}
