package com.chainsys.bookmanagement.compositekey;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;

public class OrderdDetailsCompositeKey implements Serializable {

	@Column(name = "ORDEREDID")
	private int orderedId; // Foreign key
	@Column(name = "BOOKID")
	private int bookId; // Foreign key

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

	@Override
	public int hashCode() {
		return Objects.hash(this.getOrderedId(),this.getBookId());
	}
	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if(obj==null) {
			return false;
		}
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			OrderdDetailsCompositeKey other = (OrderdDetailsCompositeKey) obj;
			if (other.getOrderedId() == this.getOrderedId()) {
				if(other.getBookId()== this.getBookId())
					result = true;
			}
		}
		return result;
	}
}