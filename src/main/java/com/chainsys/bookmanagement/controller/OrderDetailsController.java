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

import com.chainsys.bookmanagement.pojo.OrderDetails;
import com.chainsys.bookmanagement.service.OrderDetailsService;


@Controller
@RequestMapping("/orderdetails")
public class OrderDetailsController {
	 @Autowired
	 OrderDetailsService odservice;
	 @GetMapping("/list")
	    public String getallOrderDetails(Model model) {
	    	List<OrderDetails> theod = odservice.getallOrderDetails();
	    	model.addAttribute("allOrderDetails", theod);
	        return "list-orderdetails";
	    }
	 
	 @GetMapping("/findorderdetailsbyid")
	    public String findOrderDetailsById(@RequestParam("odid") int id, Model model) {
	        OrderDetails theod = odservice.findById(id);
	        model.addAttribute("findorderdetailsbyid", theod);
	        return "find-orderdetails-id-form";
	    }
	    
	    @GetMapping("/addform")
	    public String showAddForm(Model model) {
	    	OrderDetails theod = new OrderDetails();
	        model.addAttribute("addorderdetails", theod);
	        return "add-orderdetails-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewOrderDetails(@ModelAttribute("addorderdetails") OrderDetails od) {
	    	odservice.save(od);
	        return "redirect:/orderdetails/list";
	    }
	    
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("odid") int id, Model model) {
	        OrderDetails theod = odservice.findById(id);
	        model.addAttribute("updateorderdetails", theod);
	        return "update-orderdetails-form";
	    }
	    
	    @PostMapping("/updateorderdetails")
	    public String UpdateOrderDetails(@ModelAttribute("updateorderdetails") OrderDetails theod)
	    {
	    	odservice.save(theod);
	     return "redirect:/orderdetails/list";
	    }
	    @GetMapping("/deleteorderdetails")
	    public String deleteOrderDetails(@RequestParam("odid") int id) {
	    	odservice.deleteById(id);
	        return "redirect:/orderdetails/list";
	    }
}
