package com.chainsys.bookmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.compositekey.OrderdDetailsCompositeKey;
import com.chainsys.bookmanagement.model.Book;
import com.chainsys.bookmanagement.model.OrderDetails;
import com.chainsys.bookmanagement.model.OrderedHistory;
import com.chainsys.bookmanagement.repository.OrderDetailsRepository;

@Service
public class OrderDetailsService {
@Autowired
private OrderDetailsRepository orderDetailsRepository;
@Autowired
private BookService bookService;
@Autowired
private OrderdHistoryService orderdHistoryService;

public List<OrderDetails> getallOrderDetails() {
    List<OrderDetails> listOrderDetails= orderDetailsRepository.findAll();
    return listOrderDetails;
}
// @Transactional
public OrderDetails save(OrderDetails orderDetails) {
	orderDetails=orderDetailsRepository.save(orderDetails);
	int bookId=orderDetails.getBookId();
	Book book=bookService.findById(bookId);
	if(book==null)
	{
		System.out.println("Book is not Available");
		return null;
	}
	int currentStock=book.getStockInHand()-orderDetails.getQuantity();
	book.setStockInHand(currentStock);
	bookService.save(book);
	OrderedHistory orderedHistory=orderdHistoryService.findById(orderDetails.getOrderedId());
	double orderAmount=orderedHistory.getTotalAmount()+orderDetails.getAmount();
	orderedHistory.setTotalAmount(orderAmount);
	orderdHistoryService.save(orderedHistory);
    return orderDetails;
    
}
public Optional<OrderDetails> findById(OrderdDetailsCompositeKey orderdDetailsCompositeKey) {
    return orderDetailsRepository.findById(orderdDetailsCompositeKey);
}
//@Transactional
public void deleteById(OrderdDetailsCompositeKey id) {
	orderDetailsRepository.deleteById(id);
}
public List<OrderDetails> allorderdHistory() {
	return orderDetailsRepository.findAll();
}
public List<OrderDetails>orderDetailsList(int id){
	return orderDetailsRepository.findByOrderedId(id);
}
}
