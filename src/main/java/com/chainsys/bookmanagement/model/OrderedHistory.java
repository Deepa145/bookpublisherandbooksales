package com.chainsys.bookmanagement.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="orderedhistory")
public class OrderedHistory {
	@Id
	@Column(name="ORDEREDID")
private int orderedId;
	@Column(name="STATUS")
private String status;
	@Column(name="SHOPID")
private int shopId;
	@Column(name="ORDEREDDATE")
private Date orderedDate;
	@Column(name="TOTALAMOUNT")
private double totalAmount;
	
	@OneToMany(mappedBy="orderedHistory",fetch=FetchType.LAZY)
	private List<OrderDetails> orderDetails;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "ORDEREDID", nullable = false, insertable = false, updatable = false)
	private Shop shop;
	
public Shop getShop() {
		return shop;
	}
	public void setShop(Shop shop) {
		this.shop = shop;
	}
public List<OrderDetails> getOrderDetails() {
		return orderDetails;
	}
	public void setOrderDetails(List<OrderDetails> orderDetails) {
		this.orderDetails = orderDetails;
	}
public int getOrderedId() {
	return orderedId;
}
public void setOrderedId(int orderedId) {
	this.orderedId = orderedId;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public int getShopId() {
	return shopId;
}
public void setShopId(int shopId) {
	this.shopId = shopId;
}
public Date getOrderedDate() {
	return orderedDate;
}
public void setOrderedDate(Date orderedDate) {
	this.orderedDate = orderedDate;
}
public double getTotalAmount() {
	return totalAmount;
}
public void setTotalAmount(double totalAmount) {
	this.totalAmount = totalAmount;
}

}
