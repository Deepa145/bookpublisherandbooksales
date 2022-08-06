package com.chainsys.bookmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.compositekey.OrderdDetailsCompositeKey;
import com.chainsys.bookmanagement.model.OrderDetails;
import com.chainsys.bookmanagement.repository.OrderDetailsRepository;

@Service
public class OrderDetailsService {
@Autowired
private OrderDetailsRepository orderDetailsRepository;
public List<OrderDetails> getallOrderDetails() {
    List<OrderDetails> listOrderDetails= orderDetailsRepository.findAll();
    return listOrderDetails;
}
// @Transactional
public OrderDetails save(OrderDetails orderDetails) {
    return orderDetailsRepository.save(orderDetails);
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
//public List<OrderDetails> allorderDetails() {
//	return orderDetailsRepository.findAll();
//}
}
