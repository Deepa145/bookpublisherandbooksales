package com.chainsys.bookmanagement.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.pojo.Book;
import com.chainsys.bookmanagement.pojo.BookOrderDetailsDTO;
import com.chainsys.bookmanagement.pojo.OrderDetails;
import com.chainsys.bookmanagement.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository repo;

	public List<Book> getallBooks() {
		List<Book> listDr = repo.findAll();
		return listDr;
	}

	@Transactional
	public Book save(Book bk) {
		return repo.save(bk);
	}

	public Book findById(int id) {
		return repo.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		repo.deleteById(id);
	}

	@Transactional
	public BookOrderDetailsDTO getBookOrderDetails(int id) {
		Book bk = findById(id);
		BookOrderDetailsDTO dto = new BookOrderDetailsDTO();
		dto.setBook(bk);
		int i = 1;
//    	for(int i=0;i<=3;i++)
//    	{
		OrderDetails od = new OrderDetails();
		od.setOrderedId(id);
		od.setBookId(id);
		od.setQuantity(i);
		od.setAmount(i * 100);
		dto.addOrderDetails(od);

//    	}
		return dto;
	}

	public void addBookOrderDetails(BookOrderDetailsDTO dto) {
		Book bk = dto.getBook();
		save(bk);
		List<OrderDetails> orderdetailsList = dto.getOrderDetails();
		int count = orderdetailsList.size();
		for (int i = 0; i < count; i++) {
			repo.save(orderdetailsList.get(i));
		}
	}

	public int getNextOrderDetailsId() {
		return repo.getNextId();
	}
}
