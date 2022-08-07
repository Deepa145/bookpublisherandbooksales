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

import com.chainsys.bookmanagement.compositekey.OrderdDetailsCompositeKey;
import com.chainsys.bookmanagement.model.AuthorBookDetails;
import com.chainsys.bookmanagement.model.OrderDetails;
import com.chainsys.bookmanagement.service.OrderDetailsService;


@Controller
@RequestMapping("/orderdetails")
public class OrderDetailsController {
	 @Autowired
	private OrderDetailsService orderDetailsService;
	 @GetMapping("/orderdetailslist")
	    public String getallOrderDetails(Model model) {
	    	List<OrderDetails> allorderDetails = orderDetailsService.getallOrderDetails();
	    	model.addAttribute("allOrderDetails", allorderDetails);
	        return "list-orderdetails";
	    }
	 
	 @GetMapping("/findorderbookdetailsbyid")
	    public String findOrderBookDetailsById(@RequestParam("orderedid") int orderedid,@RequestParam("bookid")int bookid, Model model) {
	        OrderdDetailsCompositeKey orderdDetailsCompositeKey = new OrderdDetailsCompositeKey(orderedid, bookid);
	        Optional<OrderDetails> theorder = orderDetailsService.findById(orderdDetailsCompositeKey);
	        model.addAttribute("findorderbookdetailsbyid", theorder);
	        return "find-orderbookdetails-id-form";
	    }
	    
	    @GetMapping("/addorderdetails")
	    public String showAddForm(Model model) {
	    	List<OrderDetails> allorderDetails = orderDetailsService.allorderdHistory();
	        model.addAttribute("allOrderbookDetails", allorderDetails);
	        OrderDetails theorderdetails=new OrderDetails();
	        model.addAttribute("addorderDetails", theorderdetails);
	        return "add-orderbookdetails-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewOrderDetails(@ModelAttribute("addorderDetails") OrderDetails orderDetails) {
	    	orderDetailsService.save(orderDetails);
	        return "redirect:/orderdetails/orderdetailslist";
	    }
	    
	    @GetMapping("/updateorderdetails")
	    public String showUpdateForm(@RequestParam("orderedid") int orderedid,@RequestParam("bookid")int bookid, Model model) {
	        OrderdDetailsCompositeKey orderdDetailsCompositeKey = new OrderdDetailsCompositeKey(orderedid, bookid);
	        Optional<OrderDetails> theorderdetails=orderDetailsService.findById(orderdDetailsCompositeKey);
	        model.addAttribute("updateorderbookdetails", theorderdetails);
	        return "update-orderdetails-form";
	    }
	    
	    @PostMapping("/updateorderdetails")
	    public String UpdateOrderDetails(@ModelAttribute("updateorderbookdetails") OrderDetails orderDetails)
	    {
	    	orderDetailsService.save(orderDetails);
	    	 return "redirect:/orderdetails/orderdetailslist";
	    }
	    @GetMapping("/deleteorderbookdetails")
	    public String deleteOrderDetails(@RequestParam("orderedid") int orderedid,@RequestParam("bookid")int bookid, Model model) {
	    	OrderdDetailsCompositeKey orderdDetailsCompositeKey=new OrderdDetailsCompositeKey(orderedid, bookid);
	    	orderDetailsService.deleteById(orderdDetailsCompositeKey);
	    	 return "redirect:/orderdetails/orderdetailslist";
	    }
}
