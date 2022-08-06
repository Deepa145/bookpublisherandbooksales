package com.chainsys.bookmanagement.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="authors")
public class Authors {
	@Id
	@Column(name="AUTHORID")
private int authorId; //primary key one to many
	@Column(name="AUTHORNAME")
private String authorName;
	@Column(name="AUTHORADDRESS")
private String authorAddress;
	@Column(name="PHONENUMBER")
private long phoneNumber;
	@Column(name="EMAIL")
private String email;
	@Column(name="GENDER")
private String gender;

	@OneToMany(mappedBy = "authors",fetch=FetchType.LAZY)
	private List<AuthorBookDetails>authorBookDetails;
	
	
	public List<AuthorBookDetails> getAuthorBookDetails() {
		return authorBookDetails;
	}
	public void setAuthorBookDetails(List<AuthorBookDetails> authorBookDetails) {
		this.authorBookDetails = authorBookDetails;
	}
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
	
//public List<AuthorBookDetails> getAuthorBookDetails() {
//		return authorBookDetails;
//	}
//	public void setAuthorBookDetails(List<AuthorBookDetails> authorBookDetails) {
//		this.authorBookDetails = authorBookDetails;
//	}
	// This is used to One to One connections

}
