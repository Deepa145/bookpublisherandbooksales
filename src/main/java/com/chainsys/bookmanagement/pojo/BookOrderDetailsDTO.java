package com.chainsys.bookmanagement.pojo;

import java.util.ArrayList;
import java.util.List;


public class BookOrderDetailsDTO {
	private Book book;
	private List<OrderDetails> odlist=new ArrayList<OrderDetails>();
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public void addOrderDetails(OrderDetails od)
	{
		odlist.add(od);
	}
	public List<OrderDetails> getOrderDetails()
	{
	return odlist;	
	}
	}
