package com.chainsys.bookmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.Range;

import com.chainsys.bookmanagement.compositekey.OrderdDetailsCompositeKey;

@Entity
@Table(name = "orderdetails")
@IdClass(OrderdDetailsCompositeKey.class)
public class OrderDetails {
	@Id
	@Column(name = "ORDEREDID")
	@Min(value = 1,message ="*orderedId shouldn't be null")
	private int orderedId;
	@Id
	@Column(name = "BOOKID")
	@Min(value = 1,message ="*bookId shouldn't be null")
	private int bookId;
	@Column(name = "QUANTITY")
	@Min(value = 1,message ="*quantity shouldn't be null")
	private int quantity;
	@Column(name = "AMOUNT")
	@Range(min=(long) 0.0,message ="*Amount shouldn't be less than 0")
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
	
	public String toString() {
		return String.format("%d,%d,%d,%d",orderedId,bookId, quantity, amount);
	}

}
