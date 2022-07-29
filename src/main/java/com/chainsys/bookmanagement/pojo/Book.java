package com.chainsys.bookmanagement.pojo;

import java.util.Date;

public class Book {
private int bookId;
private String bookName;
private Date dateOfPublishing;
private String category;
private double price;
private long stockInHand;
private long sales;
public int getBookId() {
	return bookId;
}
public void setBookId(int bookId) {
	this.bookId = bookId;
}
public String getBookName() {
	return bookName;
}
public void setBookName(String bookName) {
	this.bookName = bookName;
}
public Date getDateOfPublishing() {
	return dateOfPublishing;
}
public void setDateOfPublishing(Date dateOfPublishing) {
	this.dateOfPublishing = dateOfPublishing;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public long getStockInHand() {
	return stockInHand;
}
public void setStockInHand(long stockInHand) {
	this.stockInHand = stockInHand;
}
public long getSales() {
	return sales;
}
public void setSales(long sales) {
	this.sales = sales;
}

@Override
public String toString() {
	return String.format("%d,%s,%s,%s,%d,%d,%d",bookId,bookName,dateOfPublishing,category,price,stockInHand,sales);
}
}
