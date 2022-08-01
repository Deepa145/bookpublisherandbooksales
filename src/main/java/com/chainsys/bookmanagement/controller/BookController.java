package com.chainsys.bookmanagement.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.bookmanagement.pojo.Book;
import com.chainsys.bookmanagement.pojo.BookOrderDetailsDTO;
import com.chainsys.bookmanagement.pojo.OrderDetails;
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
	        Book thebook = new Book();
	        model.addAttribute("addbooks", thebook);
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
	    public String deleteBook(@RequestParam("bookid") int bookid) {
	    	bkservice.deleteById(bookid);
	        return "redirect:/book/list";
	    }
	    
	    @GetMapping("/getdocod")
	    public String getOrderDetails(@RequestParam("bookid")int id,Model model)
	    {
	    	BookOrderDetailsDTO dto=bkservice.getBookOrderDetails(id);
	    	model.addAttribute("getbook",dto.getBook());
	    	model.addAttribute("OrderDetailslist",dto.getOrderDetails());
	    	return "list-book-orderdetails";
	    }
	    @GetMapping("/trans")
	    public void testTransaction(@RequestParam("bookid") int id)
	    {
	    	BookOrderDetailsDTO dto=new BookOrderDetailsDTO();
	    	Book bk=new Book();
	    	bk.setBookId(505);
	    	bk.setBookName("Sanga Tamil");
	    	Date dt=new Date(20,7,14);
	    	bk.setDateOfPublishing(dt);   	
	    	bk.setCategory("History");
	    	bk.setPrice(150);
	    	bk.setStockInHand(5);
	    	bk.setSales(2);
	    	dto.setBook(bk);
	    	List<OrderDetails> applist=new ArrayList<OrderDetails>();
	    	int nextAppId=bkservice.getNextOrderDetailsId();
	    for(int i=nextAppId;i<nextAppId;i++)
	    	//for(int i=2000;i<=2025;i++)
	    	{
	    		OrderDetails od=new OrderDetails();
	    		od.setOrderedId(id);	    		
	    		od.setBookId(id);
	    		od.setQuantity(i);
	    		od.setAmount(i*100);
	    		//app.setFees_collected(i*500);
	    		dto.addOrderDetails(od);
	    	}
	    	bkservice.addBookOrderDetails(dto);
	    	System.out.println("Successfully Completed");
	    }
}
