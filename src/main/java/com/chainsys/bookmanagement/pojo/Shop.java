package com.chainsys.bookmanagement.pojo;

public class Shop {
private int shopId;
private String shopLocation;
private String contactPerson;
private long phonenumber;
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
public long getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(long phonenumber) {
	this.phonenumber = phonenumber;
}
@Override
public String toString() {
	return String.format("%d,%s,%s,%d",shopId,shopLocation,contactPerson,phonenumber);
}

}
