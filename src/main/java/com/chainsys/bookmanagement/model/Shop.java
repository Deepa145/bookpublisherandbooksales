package com.chainsys.bookmanagement.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="shop")
public class Shop {
	@Id
	@Column(name="SHOPID")
private int shopId;
	@Column(name="SHOPLOCATION")
private String shopLocation;
	@Column(name="CONTACTPERSON")
private String contactPerson;
	@Column(name="PHONENUMBER")
private long phoneNumber;
	
	@OneToMany(mappedBy = "shop",fetch=FetchType.LAZY)
	private List<OrderedHistory> orderedHistories;
	
public List<OrderedHistory> getOrderedHistories() {
		return orderedHistories;
	}
	public void setOrderedHistories(List<OrderedHistory> orderedHistories) {
		this.orderedHistories = orderedHistories;
	}
public int getShopId() {
	return shopId;
}
public void setShopId(int shopId) {
	this.shopId = shopId;
}
public String getShopLocation() {
	return shopLocation;
}
public void setShopLocation(String shopLocation) {
	this.shopLocation = shopLocation;
}
public String getContactPerson() {
	return contactPerson;
}
public void setContactPerson(String contactPerson) {
	this.contactPerson = contactPerson;
}
public long getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(long phoneNumber) {
	this.phoneNumber = phoneNumber;
}
}
