package com.chainsys.bookmanagement.pojo;

public class Authors {
private int authorId;
private String authorName;
private String authorAddress;
private long phoneNumber;
private String email;
private String gender;
public int getAuthorId() {
	return authorId;
}
public void setAuthorId(int authorId) {
	this.authorId = authorId;
}
public String getAuthorName() {
	return authorName;
}
public void setAuthorName(String authorName) {
	this.authorName = authorName;
}
public String getAuthorAddress() {
	return authorAddress;
}
public void setAuthorAddress(String authorAddress) {
	this.authorAddress = authorAddress;
}
public long getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(long phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}

@Override
public String toString() {
	return String.format("%d,%s,%s,%d,%s,%s",authorId,authorName,authorAddress,phoneNumber,email,gender);
}
}
