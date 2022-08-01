package com.chainsys.bookmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.pojo.OrderDetails;
import com.chainsys.bookmanagement.repository.OrderDetailsRepository;

@Service
public class OrderDetailsService {
@Autowired
private OrderDetailsRepository repo;
public List<OrderDetails> getallOrderDetails() {
    List<OrderDetails> listOd = repo.findAll();
    return listOd;
}
// @Transactional
public OrderDetails save(OrderDetails od) {
    return repo.save(od);
}
public OrderDetails findById(int id) {
    return repo.findById(id);
}
//@Transactional
public void deleteById(int id) {
    repo.deleteById(id);
}
}
