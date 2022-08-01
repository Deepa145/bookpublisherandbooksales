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

import com.chainsys.bookmanagement.pojo.AuthorBookDetails;
import com.chainsys.bookmanagement.service.AuthorBookDetailsService;


@Controller
@RequestMapping("/authorbookdetails")
public class AuthorBookDetailsController {
	 @Autowired
	    AuthorBookDetailsService aubkservice;
	 @GetMapping("/list")
	    public String getallAuthorBookDetails(Model model) {
	    	List<AuthorBookDetails> theauthorbk = aubkservice.getallAuthorBookDetails();
	    	model.addAttribute("allauthorsbookdetails", theauthorbk);
	        return "list-authorbookdetails";
	    }
	 
	 @GetMapping("/findauthorbookdetailsbyid")
	    public String findAuthorbookdetailsById(@RequestParam("authorbookdetailid") int id, Model model) {
	        AuthorBookDetails theauthorbk = aubkservice.findById(id);
	        model.addAttribute("findauthorbookdetailsbyid", theauthorbk);
	        return "find-authorbookdetails-id-form";
	    }

	 @GetMapping("/addform")
	    public String showAddForm(Model model) {
		 AuthorBookDetails theauthorbk = new AuthorBookDetails();
	        model.addAttribute("addauthorbookdetails", theauthorbk);
	        return "add-authorbookdetails-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewAuthorBookDetails(@ModelAttribute("addauthorbookdetails") AuthorBookDetails aubk) {
	    	aubkservice.save(aubk);
	        return "redirect:/authorbookdetails/list";
	    }
	    
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("authorbookdetailid") int authorid, Model model) {
	    	AuthorBookDetails theauthor = aubkservice.findById(authorid);
	        model.addAttribute("updateauthor", theauthor);
	        return "update-authorbookdetails-form";
	    }
	    
	    @PostMapping("/updateauthorbookdetails")
	    public String UpdateAuthorBookDetails(@ModelAttribute("updateauthorbookdetails") AuthorBookDetails theauthorbk)
	    {
	    	aubkservice.save(theauthorbk);
	     return "redirect:/authorbookdetails/list";
	    }
	    @GetMapping("/deleteauthorbookdetails")
	    public String deleteAuthorBookDetails(@RequestParam("authorbookdetailid") int authorid) {
	    	aubkservice.deleteById(authorid);
	        return "redirect:/authorbookdetails/list";
	    }
}

