package com.chainsys.bookmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.bookmanagement.pojo.Shop;
import com.chainsys.bookmanagement.repository.ShopRepository;

@Service
public class ShopService {
@Autowired
private ShopRepository repo;
public List<Shop> getallShops() {
    List<Shop> listSh = repo.findAll();
    return listSh;
}
// @Transactional
public Shop save(Shop sh) {
    return repo.save(sh);
}
public Shop findById(int id) {
    return repo.findById(id);
}
//@Transactional
public void deleteById(int id) {
    repo.deleteById(id);
}
}