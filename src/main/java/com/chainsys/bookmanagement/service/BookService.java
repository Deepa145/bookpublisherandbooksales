package com.chainsys.bookmanagement.service;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.model.AuthorBookDetails;
import com.chainsys.bookmanagement.model.AuthorBookDetailsDTO;
import com.chainsys.bookmanagement.model.Authors;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.model.OrderDetails;
import com.chainsys.bookmanagement.model.OrderDetailsDTO;
import com.chainsys.bookmanagement.repository.AuthorBookDetailsRepository;
import com.chainsys.bookmanagement.repository.AuthorsRepository;
import com.chainsys.bookmanagement.repository.BookRepository;
import com.chainsys.bookmanagement.repository.OrderDetailsRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository bookRepository;
	@Autowired
	private AuthorBookDetailsRepository authorBookDetailsRepository; 
	@Autowired
	private AuthorsRepository authorsRepository;
//	@Autowired
//	private OrderDetailsRepository orderDetailsRepository;
	
	public List<Book> getallBooks() {
		List<Book> listBook = bookRepository.findAll();
		return listBook;
	}

	// @Transactional
	public Book save(Book book) {
		return bookRepository.save(book);
	}

	public Book findById(int id) {
		return bookRepository.findById(id);
	}

	// @Transactional
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
			authorBookDetailsDTO.addAuthorBookDetails((AuthorBookDetails) itr.next());
		}
		return authorBookDetailsDTO;
	}


	

//	@Transactional
//	public BookOrderDetailsDTO getBookOrderDetails(int id) {
//		Book bk = findById(id);
//		BookOrderDetailsDTO dto = new BookOrderDetailsDTO();
//		dto.setBook(bk);
//		int i = 1;
////    	for(int i=0;i<=3;i++)
////    	{
//		OrderDetails od = new OrderDetails();
//		od.setOrderedId(id);
//		od.setBookId(id);
//		od.setQuantity(i);
//		od.setAmount(i * 100);
//		dto.addOrderDetails(od);
//
////    	}
//		return dto;
//	}

//	public void addBookOrderDetails(BookOrderDetailsDTO dto) {
//		Book bk = dto.getBook();
//		save(bk);
//		List<OrderDetails> orderdetailsList = dto.getOrderDetails();
//		int count = orderdetailsList.size();
//		for (int i = 0; i < count; i++) {
//			repo.save(orderdetailsList.get(i));
//		}
//	}
//
//	public int getNextOrderDetailsId() {
//		return repo.getNextId();
//	}
}
