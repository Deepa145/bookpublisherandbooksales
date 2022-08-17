package com.chainsys.bookmanagement.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.bookmanagement.compositekey.OrderdDetailsCompositeKey;
import com.chainsys.bookmanagement.model.OrderDetails;

public interface OrderDetailsRepository extends CrudRepository<OrderDetails,OrderdDetailsCompositeKey> {
	Optional<OrderDetails> findById(OrderdDetailsCompositeKey orderdDetailsCompositeKey);
	
	OrderDetails save(OrderDetails od);
	    // Used for adding new Book
	    void deleteById(OrderdDetailsCompositeKey id);
	    List<OrderDetails> findAll();

		List<OrderDetails> findByOrderedId(int id);
}
