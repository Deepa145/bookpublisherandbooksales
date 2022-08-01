package com.chainsys.bookmanagement.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="authorbookdetails")
public class AuthorBookDetails {
	@Id
	@Column(name="AUTHORID")
private int authorId;
	@Column(name="BOOKID")
private int bookId;
	@Column(name="ROYALTY")
private String royalty;
public int getAuthorId() {
	return authorId;
}
public void setAuthorId(int authorId) {
	this.authorId = authorId;
}
public int getBookId() {
	return bookId;
}
public void setBookId(int bookId) {
	this.bookId = bookId;
}
public String getRoyalty() {
	return royalty;
}
public void setRoyalty(String royalty) {
	this.royalty = royalty;
} 

@Override
public String toString() {
	return String.format("%d,%d,%s",authorId,bookId,royalty);
}
}
