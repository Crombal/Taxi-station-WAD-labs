package com.wad.labs.taxistation.repository;

import com.wad.labs.taxistation.domain.Order;
import com.wad.labs.taxistation.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository<Order, Long> {

    Iterable<Order> findAllByAuthor(User author);
}
