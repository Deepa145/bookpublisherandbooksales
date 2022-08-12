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

import com.chainsys.bookmanagement.model.Authors;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.service.AuthorsService;

@Controller
@RequestMapping("/authors")
public class AuthorsController {
	 @Autowired
	    AuthorsService auservice;
	 @GetMapping("/authorslist")
	    public String getallAuthors(Model model) {
	    	List<Authors> theauthor = auservice.getAuthors();
	    	model.addAttribute("allauthors", theauthor);
	        return "list-authors";
	    }
	 @GetMapping("/findauthorform")
		public String showFindForm()
		{
			return "fetch-author-form";
		}
	 
	 @GetMapping("/findauthorbyid")
	    public String findAuthorById(int authorid, Model model) {
	        Authors theauthor = auservice.findById(authorid);
	        model.addAttribute("findauthorbyid", theauthor);
	        return "find-author-id-form";
	    }

	 @GetMapping("/addauthor")
	    public String showAddForm(Model model) {
	        Authors theauthor = new Authors();
	        model.addAttribute("addauthors", theauthor);
	        return "add-authors-form";
	    }
	    
	    @PostMapping("/add")
	    public String addNewAuthor(@Valid @ModelAttribute("addauthors") Authors au,Errors error) {
	    	
	    	if(error.hasErrors())
			{
				return "add-authors-form";
			}auservice.save(au);
	        return "redirect:/authors/authorslist";
	    }
	    
	    @GetMapping("/updateauthor")
	    public String showUpdateForm(@RequestParam("authorid") int authorid, Model model) {
	        Authors theauthor = auservice.findById(authorid);
	        model.addAttribute("updateauthor", theauthor);
	        return "update-authors-form";
	    }
	    
	    @PostMapping("/updateauthors")
	    public String UpdateAuthors(@Valid @ModelAttribute("updateauthor") Authors theauthor,Errors error)
	    {
	    	if(error.hasErrors())
			{
				return "update-authors-form";
			}
	    	auservice.save(theauthor);
	     return "redirect:/authors/authorslist";
	    }
	    @GetMapping("/deleteauthor")
	    public String deleteAuthor(@RequestParam("authorid") int authorid) {
	    	auservice.deleteById(authorid);
	        return "redirect:/authors/authorslist";
	    }
}
