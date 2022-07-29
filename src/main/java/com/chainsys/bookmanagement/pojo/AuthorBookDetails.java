package com.chainsys.bookmanagement.pojo;

public class AuthorBookDetails {
private int authorId;
private int bookId;
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
