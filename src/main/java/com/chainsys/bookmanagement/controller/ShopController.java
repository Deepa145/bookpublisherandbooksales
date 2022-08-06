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

import com.chainsys.bookmanagement.model.Shop;
import com.chainsys.bookmanagement.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	 @Autowired
	    ShopService shopService;
	 @GetMapping("/shoplist")
	    public String getallShops(Model model) {
	    	List<Shop> theshop = shopService.getallShops();
	    	model.addAttribute("allshops", theshop);
	        return "list-shops";
	    }
	 
	 @GetMapping("/findshopbyid")
	    public String findShopById(@RequestParam("shopid") int shopid, Model model) {
	        Shop theshop = shopService.findById(shopid);
	        model.addAttribute("findshopbyid", theshop);
	        return "find-shop-id-form";
	    }
	    
	    @GetMapping("/addshop")
	    public String showAddForm(Model model) {
	        Shop theshop = new Shop();
	        model.addAttribute("addshops", theshop);
	        return "add-shop-form";
	    }
	    
	    @PostMapping("/add")
	    // We need give from where to read data from the HTTP request and also the content type ("application/json")
	    public String addNewShop(@ModelAttribute("addshops") Shop sh) {
	    	shopService.save(sh);
	        return "redirect:/shop/shoplist";
	    }
	    
	    @GetMapping("/updateshop")
	    public String showUpdateForm(@RequestParam("shopid") int shopid, Model model) {
	        Shop theshop = shopService.findById(shopid);
	        model.addAttribute("updateshop", theshop);
	        return "update-shop-form";
	    }
	    
	    @PostMapping("/updateshop")
	    public String UpdateShops(@ModelAttribute("updateshop") Shop theshop)
	    {
	    	shopService.save(theshop);
	     return "redirect:/shop/shoplist";
	    }
	    @GetMapping("/deleteshop")
	    public String deleteShop(@RequestParam("shopid") int shopid) {
	    	shopService.deleteById(shopid);
	        return "redirect:/shop/shoplist";
	    }
}
