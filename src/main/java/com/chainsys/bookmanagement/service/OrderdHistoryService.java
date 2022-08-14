package com.chainsys.bookmanagement.service;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.model.Authors;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.model.OrderDetails;
import com.chainsys.bookmanagement.model.OrderDetailsDTO;
import com.chainsys.bookmanagement.model.OrderedHistory;
import com.chainsys.bookmanagement.model.Shop;
import com.chainsys.bookmanagement.repository.AuthorsRepository;
import com.chainsys.bookmanagement.repository.BookRepository;
import com.chainsys.bookmanagement.repository.OrderDetailsRepository;
import com.chainsys.bookmanagement.repository.OrderdHistoryRepository;
import com.chainsys.bookmanagement.repository.ShopRepository;

@Service
public class OrderdHistoryService {
@Autowired
private OrderdHistoryRepository orderdHistoryRepository;
@Autowired
private OrderDetailsRepository orderDetailsRepository;
@Autowired
private BookRepository bookRepository;
public List<OrderedHistory> getallOrderedHistory() {
	 List<OrderedHistory> orderedHistories = orderdHistoryRepository.findAll();
	    return orderedHistories;
	}
//	public OrderedHistory save(OrderedHistory orderedHistory) {
//		List<OrderDetails>orderDetailsList=orderDetailsRepository.findByOrderedId(orderedHistory.getOrderedId());
//		for(int i=0;i<orderDetailsList.size();i++) {
//		    Book book= bookRepository.findById(orderDetailsList.get(i).getBookId());
//		    book.setStockInHand(book.getStockInHand()-orderDetailsList.get(i).getQuantity());
//		    bookRepository.save(book);
//		}
//	    return orderdHistoryRepository.save(orderedHistory);
//	}
	public OrderedHistory save(OrderedHistory orderedHistory) {
	    return orderdHistoryRepository.save(orderedHistory);
	}
	public OrderedHistory findById(int id) {
	    return orderdHistoryRepository.findById(id);
	}
	//@Transactional
	public void deleteById(int id) {
		orderdHistoryRepository.deleteById(id);  
}
	public Book findByBookId(int id) {
		return bookRepository.findById(id);
	}
	
	@Transactional
	public OrderDetailsDTO getOrderHistoryAndOrderDetails(int id)
	{
	OrderedHistory orderedHistory=findById(id);
	OrderDetailsDTO orderDetailsDTO=new OrderDetailsDTO();
	orderDetailsDTO.setOrderedHistory(orderedHistory);
	List<OrderDetails> orderDetails=orderDetailsRepository.findByOrderedId(id);
	Iterator<OrderDetails> itr=orderDetails.iterator();
	while(itr.hasNext())
	{
		orderDetailsDTO.addOrderDetails((OrderDetails)itr.next());
	}
	return orderDetailsDTO;
	}
	
}