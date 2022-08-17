package com.chainsys.bookmanagement.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class OrderdDetailsCompositeKey implements Serializable {

	@Column(name = "ORDEREDID")
	private int orderedId; 
	@Column(name = "BOOKID")
	private int bookId; 

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