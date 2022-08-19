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
import com.chainsys.bookmanagement.repository.BookRepository;
import com.chainsys.bookmanagement.repository.OrderDetailsRepository;
import com.chainsys.bookmanagement.repository.OrderdHistoryRepository;

@Service
public class OrderdHistoryService {
@Autowired
private OrderdHistoryRepository orderdHistoryRepository;
@Autowired
private OrderDetailsRepository orderDetailsRepository;
@Autowired
private BookRepository bookRepository;
public List<OrderedHistory> getallOrderedHistory() {
	 return orderdHistoryRepository.findAll();
	}

	public OrderedHistory save(OrderedHistory orderedHistory) {
	    return orderdHistoryRepository.save(orderedHistory);
	}
	public OrderedHistory findById(int id) {
	    return orderdHistoryRepository.findById(id);
	}
	public void deleteById(int id) {
		orderdHistoryRepository.deleteById(id);  
}
	public Book findByBookId(int id) {
		return bookRepository.findById(id);
	}
	
	public List<OrderedHistory> allOrderedHistory(){
		return orderdHistoryRepository.findAll();
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
		orderDetailsDTO.addOrderDetails(itr.next());
	}
	return orderDetailsDTO;
	}
	
}