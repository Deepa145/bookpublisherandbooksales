package com.chainsys.bookmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.chainsys.bookmanagement.compositekey.OrderdDetailsCompositeKey;

@Entity
@Table(name = "orderdetails")
@IdClass(OrderdDetailsCompositeKey.class)
public class OrderDetails {
	@Id
	@Column(name = "ORDEREDID")
	private int orderedId;
	@Id
	@Column(name = "BOOKID")
	private int bookId;
	@Column(name = "QUANTITY")
	private int quantity;
	@Column(name = "AMOUNT")
	private double amount;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ORDEREDID", nullable = false, insertable = false, updatable = false)
	private OrderedHistory orderedHistory;

	public OrderedHistory getOrderedHistory() {
		return orderedHistory;
	}

	public void setOrderedHistory(OrderedHistory orderedHistory) {
		this.orderedHistory = orderedHistory;
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
}
