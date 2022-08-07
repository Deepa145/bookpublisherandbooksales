	package com.chainsys.bookmanagement.compositekey;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;

import com.chainsys.bookmanagement.model.AuthorBookDetails;

public class AuthorBookDetailsCompositeKey implements Serializable {

	private static final long serialVersionUID = 1L;
	@Column(name = "AUTHORID")
	private int authorId; // Foreign key
	@Column(name = "BOOKID")
	private int bookId; // Foreign key


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
	
	@Override
	public int hashCode() {
		return Objects.hash(this.getAuthorId(),this.getBookId());
	}
	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if(obj==null) {
			return false;
		}
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			AuthorBookDetailsCompositeKey other = (AuthorBookDetailsCompositeKey) obj;
			if (other.getAuthorId() == this.getAuthorId()) {
				if(other.getBookId()== this.getBookId())
					result = true;
			}
		}
		return result;
	}
}
