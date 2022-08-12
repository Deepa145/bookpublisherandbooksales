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

import com.chainsys.bookmanagement.model.AuthorBookDetailsDTO;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	BookService bkservice;

	@GetMapping("/booklist")
	public String getallBooks(Model model) {
		List<Book> thebook = bkservice.getallBooks();
		model.addAttribute("allbooks", thebook);
		return "list-books";
	}
	@GetMapping("/findbookform")
	public String showFindForm()
	{
		return "fetch-book-form";
	}
	@GetMapping("/findbookbyid")
	public String findBookById(int bookid, Model model) {
		Book thebook = bkservice.findById(bookid);
		model.addAttribute("findbookbyid", thebook);
		return "find-book-id-form";
	}
	
	

	@GetMapping("/addbook")
	public String showAddForm(Model model) {
		Book book = new Book();
		model.addAttribute("addbooks", book);
		return "add-book-form";
	}

	@PostMapping("/add")
	public String addNewBook(@Valid @ModelAttribute("addbooks") Book bk, Errors error) {
		if(error.hasErrors())
		{
			return "add-book-form";
		}
		bkservice.save(bk);
		return "redirect:/book/booklist";
	}

	@GetMapping("/updatebooks")
	public String showUpdateForm(@RequestParam("bookid") int bookid, Model model) {
		Book thebook = bkservice.findById(bookid);
		model.addAttribute("updatebook", thebook);
		return "update-book-form";
	}

	@PostMapping("/updatebook")
	public String UpdateBooks(@Valid @ModelAttribute("updatebook") Book thebook, Errors error) {
		if(error.hasErrors())
		{
			return "update-book-form";
		}
		bkservice.save(thebook);
		return "redirect:/book/booklist";
	}

	@GetMapping("/deletebook")
	public String deleteAuthors(@RequestParam("bookid") int bookid) {
		Book book = bkservice.findById(bookid);
		bkservice.deleteById(bookid);
		return "redirect:/book/booklist";
	}

	@GetMapping("/getbookform")
	public String showGetForm()
	{
		return "Get-book-author-details";
	}
	@GetMapping("/getbookbyauthorbookdetails")

	public String getauthorbookdetails(int bookid, Model model) {
		AuthorBookDetailsDTO authorBookDetailsDTO = bkservice.getAuthorAndAuthorBookDetails(bookid);
		model.addAttribute("getbook", authorBookDetailsDTO.getBook());
		model.addAttribute("authorbookdetailslist", authorBookDetailsDTO.getAuthorBookDetails());
		return "list-book-authorbookdetails";
	}

}
