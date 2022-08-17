package com.chainsys.bookmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import org.hibernate.validator.constraints.Range;

import com.chainsys.bookmanagement.compositekey.AuthorBookDetailsCompositeKey;

@Entity
@Table(name = "authorbookdetails")
@IdClass(AuthorBookDetailsCompositeKey.class)
public class AuthorBookDetails {
	@Id
	@Column(name = "AUTHORID")
	@Min(value = 1,message ="*authorId shouldn't be null")
	private int authorId;

	@Id
	@Column(name = "BOOKID")
	@Min(value = 1,message ="*authorId shouldn't be null")
	private int bookId;

	@Column(name = "ROYALTY")
	@Range(min=(long) 10.0,message ="*price shouldn't be null")
	private double royalty;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "BOOKID", nullable = false, insertable = false, updatable = false)
	private Book book;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "AUTHORID", nullable = false, insertable = false, updatable = false)
	private Authors authors;

	public Authors getAuthors() {
		return authors;
	}

	public void setAuthors(Authors authors) {
		this.authors = authors;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
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

	

	public double getRoyalty() {
		return royalty;
	}

	public void setRoyalty(double royalty) {
		this.royalty = royalty;
	}

	public String toString() {
		return String.format("%d,%d,%d", authorId, bookId, royalty);
	}

	public boolean equals(Object obj) {
		boolean result = false;
		if (obj == null) {
			return false;
		}
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			AuthorBookDetails other = (AuthorBookDetails) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.authorId + this.bookId;
	}
}
