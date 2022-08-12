package com.chainsys.bookmanagement.controller;

import java.util.List;
import java.util.Optional;

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
	 
	 @GetMapping("/findorderbookdetailsbyidform")
		public String showOrderBookDetailsbyIdForm()
		{
			return "fetch-orderbookdetailsbyid-form";
		}
	 @GetMapping("/findorderbookdetailsbyid")
	    public String findOrderBookDetailsById(int orderedid,int bookid, Model model) {
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
	    public String addNewOrderDetails(@Valid @ModelAttribute("addorderDetails") OrderDetails orderDetails,Errors error) {
	    	if(error.hasErrors())
			{
				return "add-orderbookdetails-form";
			}
	    	orderDetailsService.save(orderDetails);
	        return "redirect:/orderdetails/orderdetailslist";
	    }
	    
	    @GetMapping("/updateorderdetailsform")
		public String updateOrderDetailsForm()
		{
			return "update-order-details-form";
		}
	    @GetMapping("/updateorderdetails")
	    public String showUpdateForm(int orderedid,int bookid, Model model) {
	        OrderdDetailsCompositeKey orderdDetailsCompositeKey = new OrderdDetailsCompositeKey(orderedid, bookid);
	        Optional<OrderDetails> theorderdetails=orderDetailsService.findById(orderdDetailsCompositeKey);
	        model.addAttribute("updateorderbookdetails", theorderdetails);
	        return "update-orderdetails-form";
	    }
	    
	    @PostMapping("/updateorderdetails")
	    public String UpdateOrderDetails(@Valid @ModelAttribute("updateorderbookdetails") OrderDetails orderDetails,Errors error)
	    {
	    	if(error.hasErrors())
			{
				return "update-orderdetails-form";
			}
	    	orderDetailsService.save(orderDetails);
	    	 return "redirect:/orderdetails/orderdetailslist";
	    }
	    @GetMapping("/deleteorderbookdetailsform")
		public String deleteOrderBookDetailsForm()
		{
			return "delete-order-book-details-form";
		}
	    @GetMapping("/deleteorderbookdetails")
	    public String deleteOrderDetails( int orderedid,int bookid, Model model) {
	    	OrderdDetailsCompositeKey orderdDetailsCompositeKey=new OrderdDetailsCompositeKey(orderedid, bookid);
	    	orderDetailsService.deleteById(orderdDetailsCompositeKey);
	    	 return "redirect:/orderdetails/orderdetailslist";
	    }
}
