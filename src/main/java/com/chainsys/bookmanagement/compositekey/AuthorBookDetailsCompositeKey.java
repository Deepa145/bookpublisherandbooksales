package com.chainsys.bookmanagement.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class AuthorBookDetailsCompositeKey implements Serializable {

	private static final long serialVersionUID = 1L;
	@Column(name = "AUTHORID")
	private int authorId; // Foreign key
	@Column(name = "BOOKID")
	private int bookId; // Foreign key
	@Column(name = "ROYALTY")
	private String royalty; 


	public AuthorBookDetailsCompositeKey() {

	}

	public AuthorBookDetailsCompositeKey(int bookId, int authorId) {
		this.bookId = bookId;
		this.authorId = authorId;
	}

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
	
}
