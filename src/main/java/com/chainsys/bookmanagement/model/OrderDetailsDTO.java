package com.chainsys.bookmanagement.model;

import java.util.ArrayList;
import java.util.List;

public class OrderDetailsDTO {
private Book book;
private OrderedHistory orderedHistory;
private List<OrderDetails> orderDetails=new ArrayList<OrderDetails>();
public Book getBook() {
	return book;
}
public void setBook(Book book) {
	this.book = book;
}
public OrderedHistory getOrderedHistory() {
	return orderedHistory;
}
public void setOrderedHistory(OrderedHistory orderedHistory) {
	this.orderedHistory = orderedHistory;
}
public List<OrderDetails> getOrderDetails() {
	return orderDetails;
}
public void addOrderDetails(OrderDetails od) {
	orderDetails.add(od);
}
}
