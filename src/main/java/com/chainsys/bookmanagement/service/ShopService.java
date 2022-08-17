package com.chainsys.bookmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.model.Shop;
import com.chainsys.bookmanagement.repository.ShopRepository;

@Service
public class ShopService {
@Autowired
private ShopRepository shopRepository;
public List<Shop> getallShops() {
    return shopRepository.findAll();
}
public Shop save(Shop shop) {
    return shopRepository.save(shop);
}
public Shop findById(int id) {
    return shopRepository.findById(id);
}
//@Transactional
public void deleteById(int id) {
	shopRepository.deleteById(id);
}
}