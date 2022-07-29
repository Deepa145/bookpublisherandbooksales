package com.chainsys.bookmanagement.pojo;

import java.util.Date;

public class OrderedHistory {
private int orderedId;
private String status;
private int shopId;
private Date orderedDate;
private double totalAmount;
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

@Override
public String toString() {
	return String.format("%d,%s,%d,%d,%d",orderedId,status,shopId,orderedDate,totalAmount);
}
}
