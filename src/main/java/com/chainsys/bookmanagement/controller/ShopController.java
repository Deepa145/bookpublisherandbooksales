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

import com.chainsys.bookmanagement.pojo.Shop;
import com.chainsys.bookmanagement.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	 @Autowired
	    ShopService shservice;
	 @GetMapping("/list")
	    public String getallShops(Model model) {
	    	List<Shop> theshop = shservice.getallShops();
	    	model.addAttribute("allshops", theshop);
	        return "list-shops";
	    }
	 
	 @GetMapping("/findshopbyid")
	    public String findShopById(@RequestParam("shopid") int id, Model model) {
	        Shop theshop = shservice.findById(id);
	        model.addAttribute("findshopbyid", theshop);
	        return "find-shop-id-form";
	    }
	    
	    @GetMapping("/addform")
	    public String showAddForm(Model model) {
	        Shop theshop = new Shop();
	        model.addAttribute("addshops", theshop);
	        return "add-shop-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewShop(@ModelAttribute("addshops") Shop sh) {
	    	shservice.save(sh);
	        return "redirect:/shop/list";
	    }
	    
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("shopid") int shopid, Model model) {
	        Shop theshop = shservice.findById(shopid);
	        model.addAttribute("updateshop", theshop);
	        return "update-shop-form";
	    }
	    
	    @PostMapping("/updateshop")
	    public String UpdateShops(@ModelAttribute("updateshop") Shop theshop)
	    {
	    	shservice.save(theshop);
	     return "redirect:/shop/list";
	    }
	    @GetMapping("/deleteshop")
	    public String deleteShop(@RequestParam("shopid") int shopid) {
	    	shservice.deleteById(shopid);
	        return "redirect:/shop/list";
	    }
}
