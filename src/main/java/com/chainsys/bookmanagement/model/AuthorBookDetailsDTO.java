package com.chainsys.bookmanagement.model;

import java.util.ArrayList;
import java.util.List;

public class AuthorBookDetailsDTO {
	private Authors authors;
	private Book book;
	private List<AuthorBookDetails> authorBookDetails = new ArrayList<>();
	
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Authors getAuthors() {
		return authors;
	}

	public void setAuthors(Authors authors) {
		this.authors = authors;
	}

	public List<AuthorBookDetails> getAuthorBookDetails() {
		return authorBookDetails;
	}

	public void addAuthorBookDetails(AuthorBookDetails abk) {
		authorBookDetails.add(abk);
	}

}
