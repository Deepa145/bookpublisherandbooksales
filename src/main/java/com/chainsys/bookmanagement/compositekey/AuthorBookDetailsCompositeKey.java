package com.chainsys.bookmanagement.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class AuthorBookDetailsCompositeKey implements Serializable {

	private static final long serialVersionUID = 1L;
	@Column(name = "AUTHORID")
	private int authorId;
	@Column(name = "BOOKID")
	private int bookId;

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
}
