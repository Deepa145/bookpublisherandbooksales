package com.chainsys.bookmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.bookmanagement.pojo.Authors;
import com.chainsys.bookmanagement.pojo.Book;
import com.chainsys.bookmanagement.service.AuthorsService;

@Controller
@RequestMapping("/authors")
public class AuthorsController {
	 @Autowired
	    AuthorsService auservice;
	 @GetMapping("/list")
	    public String getallAuthors(Model model) {
	    	List<Authors> theauthor = auservice.getallAuthors();
	    	model.addAttribute("allauthors", theauthor);
	        return "list-authors";
	    }
	 
	 @GetMapping("/findauthorbyid")
	    public String findAuthorById(@RequestParam("authorid") int id, Model model) {
	        Authors theauthor = auservice.findById(id);
	        model.addAttribute("findauthorbyid", theauthor);
	        return "find-author-id-form";
	    }

	 @GetMapping("/addform")
	    public String showAddForm(Model model) {
	        Authors theauthor = new Authors();
	        model.addAttribute("addauthors", theauthor);
	        return "add-authors-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewAuthor(@ModelAttribute("addauthors") Authors au) {
	    	auservice.save(au);
	        return "redirect:/authors/list";
	    }
	    
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("authorid") int authorid, Model model) {
	        Authors theauthor = auservice.findById(authorid);
	        model.addAttribute("updateauthor", theauthor);
	        return "update-authors-form";
	    }
	    
	    @PostMapping("/updatebook")
	    public String UpdateAuthors(@ModelAttribute("updateauthor") Authors theauthor)
	    {
	    	auservice.save(theauthor);
	     return "redirect:/authors/list";
	    }
	    @GetMapping("/deleteauthor")
	    public String deleteAuthor(@RequestParam("authorid") int authorid) {
	    	auservice.deleteById(authorid);
	        return "redirect:/authors/list";
	    }
}
