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

import com.chainsys.bookmanagement.model.OrderDetailsDTO;
import com.chainsys.bookmanagement.model.OrderedHistory;
import com.chainsys.bookmanagement.service.OrderdHistoryService;
import com.chainsys.bookmanagement.service.ShopService;

@Controller
@RequestMapping("/orderdhistory")
public class OrderdHistoryController {
	 @Autowired
OrderdHistoryService orderdHistoryService;
	 @Autowired
	 ShopService shopService;
	 @GetMapping("/orderdhistorylist")
	    public String getallOrderdHistory(Model model) {
	    	List<OrderedHistory> orderedHistories = orderdHistoryService.getallOrderedHistory();
	    	model.addAttribute("allOrderdHistories", orderedHistories);
	        return "list-orderdhistory";
	    }
	 
	 @GetMapping("/findorderhistoryform")
		public String showOrderHistoryForm()
		{
			return "fetch-OrderHistory-form";
		}
	 @GetMapping("/findorderdhistoriessbyid")
	    public String findOrderHistoriesById(int orderdhistoriesid, Model model) {
	        OrderedHistory orderedHistory = orderdHistoryService.findById(orderdhistoriesid);
	        model.addAttribute("findorderdhistoriessbyid", orderedHistory);
	        return "find-orderdhistory-id-form";
	    }
	    
	    @GetMapping("/addorderdhistory")
	    public String showAddForm(Model model) {
	    	OrderedHistory orderedHistory = new OrderedHistory();
	        model.addAttribute("addorderdhistories", orderedHistory);
	        return "add-orderdhistory-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewOrderdHistory(@Valid @ModelAttribute("addorderdhistories") OrderedHistory orderedHistory,Errors error) {
	    	if(error.hasErrors())
			{
				return "add-orderdhistory-form";
			}
	    	orderdHistoryService.save(orderedHistory);
	        return "redirect:/orderdhistory/orderdhistorylist";
	    }
	    
	    @GetMapping("/updateorderdhistories")
	    public String showUpdateForm(@RequestParam("orderdhistoriesid") int orderdHistoriesId, Model model) {
	        OrderedHistory orderedHistory = orderdHistoryService.findById(orderdHistoriesId);
	        model.addAttribute("updateorderdhistories", orderedHistory);
	        return "update-orderdhistoriess-form";
	    }
	    @PostMapping("/updateorderdhistories")
	    public String updateOrderdHistories(@Valid @ModelAttribute("updateorderdhistories") OrderedHistory orderedHistory,Errors error)
	    {
	    	if(error.hasErrors())
			{
				return "update-orderdhistoriess-form";
			}
	    	orderdHistoryService.save(orderedHistory);
	    	return "redirect:/orderdhistory/orderdhistorylist";
	    }
	    @GetMapping("/deleteorderdhistories")
	    public String deleteOrderdHistories(@RequestParam("orderdhistoriesid") int orderdHistoriesId) {
	    	orderdHistoryService.deleteById(orderdHistoriesId);
	    	return "redirect:/orderdhistory/orderdhistorylist";
	    }
	    
	    @GetMapping("/findorderhistorybyorderdetailsform")
		public String showOrderHistoryByOrderDetailsForm()
		{
			return "fetch-order-history-by-order-details-form";
		}
	    @GetMapping("/getorderhistorybyorderdetails")
	    public String getOrderDeatils(int orderid,Model model)
	    {
	    	OrderDetailsDTO orderDetailsDTO=orderdHistoryService.getOrderHistoryAndOrderDetails(orderid);
	    	model.addAttribute("getorderhistory",orderDetailsDTO.getOrderedHistory());
	    	model.addAttribute("orderdetailslist",orderDetailsDTO.getOrderDetails());
	    	return "list-orderdhistory-orderdetails";
	    }
	    
	    @GetMapping("/findordershopdetailsform")
		public String showFindForm()
		{
			return "fetch-ordershop-details-form";
		}
	    @GetMapping("/getordershopdetails")
	    public String getOrderShopDetails(int orderedid, Model model) {
	        OrderedHistory orderedHistory = orderdHistoryService.findById(orderedid);
	        model.addAttribute("fetchOrderHistoryByOrderId", orderedHistory);
	        model.addAttribute("fetchShopDetailsById", shopService.findById(orderedHistory.getShopId()));
	        return "find-shopdetails-by-orderid";
	    }
	    
}
