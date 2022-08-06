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

import com.chainsys.bookmanagement.model.AuthorBookDetailsDTO;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.model.OrderDetailsDTO;
import com.chainsys.bookmanagement.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	 @Autowired
	    BookService bkservice;
	 @GetMapping("/list")
	    public String getallBooks(Model model) {
	    	List<Book> thebook = bkservice.getallBooks();
	    	model.addAttribute("allbooks", thebook);
	        return "list-books";
	    }
	 
	 @GetMapping("/findbookbyid")
	    public String findBookById(@RequestParam("bookid") int id, Model model) {
	        Book thebook = bkservice.findById(id);
	        model.addAttribute("findbookbyid", thebook);
	        return "find-book-id-form";
	    }
	    
	    @GetMapping("/addform")
	    public String showAddForm(Model model) {
//	        List<Book> allBook =bkservice.allBook();
//	        model.addAttribute("allbooks", allBook);
	    	//This should be used in composite key
	        Book book=new Book();
	        model.addAttribute("addbooks", book);
	        return "add-book-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewBook(@ModelAttribute("addbooks") Book bk) {
	    	bkservice.save(bk);
	        return "redirect:/book/list";
	    }
	    
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("bookid") int bookid, Model model) {
	        Book thebook = bkservice.findById(bookid);
	        model.addAttribute("updatebook", thebook);
	        return "update-book-form";
	    }
	    
	    @PostMapping("/updatebook")
	    public String UpdateBooks(@ModelAttribute("updatebook") Book thebook)
	    {
	    	bkservice.save(thebook);
	     return "redirect:/book/list";
	    }
	    @GetMapping("/deletebook")
	    public String deleteAuthors(@RequestParam("bookid") int bookid) {
	    	Book book=bkservice.findById(bookid);
	    	bkservice.deleteById(bookid);
	        return "redirect:/book/list";
	    }
	    
	    @GetMapping("/getbookbyauthorbookdetails")
	    
	    	public String getauthorbookdetails(@RequestParam("bookid")int bookid,Model model)
	    	{
	    	AuthorBookDetailsDTO authorBookDetailsDTO=bkservice.getAuthorAndAuthorBookDetails(bookid);
	    	model.addAttribute("getbook", authorBookDetailsDTO.getBook());
	    	model.addAttribute("authorbookdetailslist", authorBookDetailsDTO.getAuthorBookDetails());
	    	return "list-book-authorbookdetails";
	    	}
	    	 
}
