package com.chainsys.bookmanagement.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.bookmanagement.compositekey.AuthorBookDetailsCompositeKey;
import com.chainsys.bookmanagement.model.AuthorBookDetails;
import com.chainsys.bookmanagement.model.AuthorBookDetailsDTO;
import com.chainsys.bookmanagement.model.Authors;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.service.AuthorBookDetailsService;
import com.chainsys.bookmanagement.service.AuthorsService;
import com.chainsys.bookmanagement.service.BookService;

@Controller
@RequestMapping("/authorbookdetails")
public class AuthorBookDetailsController {
	@Autowired
	private AuthorBookDetailsService aubkservice;
	@Autowired
	private AuthorsService authorsService;
	@Autowired
	private BookService bookService;

	@GetMapping("/authorbookdetailslist")
	public String getAuthorBookDetails(Model model) {
		List<AuthorBookDetails> allAuthorBookDetails = aubkservice.getAuthorBookDetails();
		model.addAttribute("allauthorbookdetails", allAuthorBookDetails);
		return "list-authorbookdetails";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		List<AuthorBookDetails> allBooks = aubkservice.allBooks();
		model.addAttribute("allbooks", allBooks);
		AuthorBookDetails theauthorbk = new AuthorBookDetails();
		model.addAttribute("addauthorbookdetails", theauthorbk);
		return "add-authorbookdetails-form";
	}

	@PostMapping("/add") // We need give from where to read data from the HTTPrequest and also the
							// content type ("application/json")
	public String addNewAuthorBookDetails(@ModelAttribute("addauthorbookdetails") AuthorBookDetails aubk) {
		aubkservice.save(aubk);
		return "redirect:/authorbookdetails/authorbookdetailslist";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("bookid") int bookid, @RequestParam("authorid") int authorid,
			Model model) {
		AuthorBookDetailsCompositeKey authorBookDetailsCompositeKey = new AuthorBookDetailsCompositeKey(bookid,
				authorid);
		Optional<AuthorBookDetails> theauthor = aubkservice.findById(authorBookDetailsCompositeKey);
		model.addAttribute("updateauthorbookdetails", theauthor);
		return "update-authorbookdetails-form";
	}

	@PostMapping("/updateauthorbookdetail")
	public String UpdateAuthorBookDetails(@ModelAttribute("updateauthorbookdetails") AuthorBookDetails theauthorbk) {
		aubkservice.save(theauthorbk);
		return "redirect:/authorbookdetails/authorbookdetailslist";
	}

	@GetMapping("/deleteauthorbookdetails")
	public String deleteAuthorBookDetails(@RequestParam("bookid") int bookid, @RequestParam("authorid") int authorid,
			Model model) {
		AuthorBookDetailsCompositeKey authorBookDetailsCompositeKey = new AuthorBookDetailsCompositeKey(bookid,
				authorid);
		aubkservice.deleteById(authorBookDetailsCompositeKey);
		return "redirect:/authorbookdetails/authorbookdetailslist";
	}

	@GetMapping("/getauthorsdetailsbyauthorid")
	public String getAuthorsDetailsbyAuthorId(@RequestParam("bookid") int bookid,
			@RequestParam("authorid") int authorid, Model model) {
		AuthorBookDetailsCompositeKey authorBookDetailsCompositeKey = new AuthorBookDetailsCompositeKey(bookid,
				authorid);
		Optional<AuthorBookDetails> authorBookDetails=aubkservice.findById(authorBookDetailsCompositeKey);
		model.addAttribute("fetchaubk", authorBookDetails);
		model.addAttribute("fetchbookandauthorid",
				authorsService.findById(authorBookDetailsCompositeKey.getAuthorId()));
		model.addAttribute("fetchauthorsdetailsbyauthorandbookid",bookService.findById(authorBookDetailsCompositeKey.getBookId()));
		
		return "find-authorsdetails-by-author-book-id";
	}
	
	
	@GetMapping("/findauthorbookdetailsbyid")
	public String findAuthorbookdetailsById(@RequestParam("bookid") int bookid, @RequestParam("authorid") int authorid,
			Model model) {
		AuthorBookDetailsCompositeKey authorBookDetailsCompositeKey = new AuthorBookDetailsCompositeKey(bookid,
				authorid);
		Optional<AuthorBookDetails> authorBookDetails=aubkservice.findById(authorBookDetailsCompositeKey);
		model.addAttribute("findauthorbookdetailsbyid", authorBookDetails);
		return "find-authorbookdetails-id-form";
	}

}