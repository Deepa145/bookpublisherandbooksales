package com.chainsys.bookmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.model.OrderedHistory;


public interface OrderdHistoryRepository  extends CrudRepository<OrderedHistory,Integer> {
	OrderedHistory findById(int id);
	OrderedHistory save(OrderedHistory orderedHistory);
	    // Used for adding new Book
	    void deleteById(int id);
	    List<OrderedHistory> findAll();
}
