package com.chainsys.bookmanagement.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="book")
public class Book {
	@Id
	@Column(name="BOOKID")
private int bookId;
	@Column(name="BOOKNAME")
private String bookName;
	@Column(name="DATEOFPUBLISHING")
private Date dateOfPublishing;
	@Column(name="CATEGORY")
private String category;
	@Column(name="PRICE")
private double price;
	@Column(name="STOCKINHAND")
private int stockInHand;
	@Column(name="SALES")
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
public int getStockInHand() {
	return stockInHand;
}
public void setStockInHand(int stockInHand) {
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
