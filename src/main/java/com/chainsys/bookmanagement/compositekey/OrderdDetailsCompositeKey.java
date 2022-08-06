package com.chainsys.bookmanagement.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class OrderdDetailsCompositeKey implements Serializable {

	@Column(name="ORDEREDID")
	private int orderedId; // Foreign key
	@Column(name = "BOOKID")
	private int bookId; // Foreign key
	  @Column(name="QUANTITY")
	  private int quantity;
	  @Column(name="AMOUNT")
	  private double amount;

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	OrderdDetailsCompositeKey() {

	}

	public OrderdDetailsCompositeKey(int orderedId, int bookId) {
		this.orderedId = orderedId;
		this.bookId = bookId;
	}

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

	
}