package com.chainsys.bookmanagement.pojo;

public class OrderDetails {
private int orderedId;
private int bookId;
private long quantity;
private double amount;
public int getOrderedId() {
	return orderedId;
}
public void setOrderedId(int orderedId) {
	this.orderedId = orderedId;
}
public int getBookId() {
	return bookId;
}
public void setBookId(int bookId) {
	this.bookId = bookId;
}
public long getQuantity() {
	return quantity;
}
public void setQuantity(long quantity) {
	this.quantity = quantity;
}
public double getAmount() {
	return amount;
}
public void setAmount(double amount) {
	this.amount = amount;
}

@Override
public String toString() {
	return String.format("%d,%d,%d,%d",orderedId,bookId,quantity,amount);
}
}
