package com.chainsys.bookmanagement.service;

import java.util.Iterator;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.bookmanagement.model.AuthorBookDetails;
import com.chainsys.bookmanagement.model.AuthorBookDetailsDTO;
import com.chainsys.bookmanagement.model.Authors;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.repository.AuthorBookDetailsRepository;
import com.chainsys.bookmanagement.repository.AuthorsRepository;
import com.chainsys.bookmanagement.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository bookRepository;
	@Autowired
	private AuthorBookDetailsRepository authorBookDetailsRepository; 
	@Autowired
	private AuthorsRepository authorsRepository;
	
	public List<Book> getallBooks() {
		return bookRepository.findAll();
	}

	public Book save(Book book) {
		return bookRepository.save(book);
	}
	
	@Transactional
	public Book addNewBook(Book book) {
		book=bookRepository.save(book);
		
		return book;
	}
	

	public Book findById(int id) {
		return bookRepository.findById(id);
	}

	public void deleteById(int id) {
		bookRepository.deleteById(id);
	}
	public Authors findByIdAuthor(int id) {
		return authorsRepository.findById(id);
	}

	@Transactional
	public AuthorBookDetailsDTO getAuthorAndAuthorBookDetails(int id) {
		Book book = findById(id);
		AuthorBookDetailsDTO authorBookDetailsDTO = new AuthorBookDetailsDTO();
		authorBookDetailsDTO.setBook(book);
		List<AuthorBookDetails> authorBookDetails = authorBookDetailsRepository.findByBookId(id);
		Iterator<AuthorBookDetails> itr = authorBookDetails.iterator();
		while (itr.hasNext()) {
			authorBookDetailsDTO.addAuthorBookDetails(itr.next());
		}
		return authorBookDetailsDTO;
	}
}
