package com.wad.labs.taxistation.service;

import com.wad.labs.taxistation.domain.Order;
import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Set;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public void addOrder(Order order, User user) {
        order.setAuthor(user);
        order.setFromStr(order.getFromStr());
        order.setToStr(order.getToStr());

        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        String date = formatter.format(calendar.getTime());

        order.setCreationDate(date);

        orderRepository.save(order);
    }

    public Iterable<Order> ordersListForUser(User currentUser, Long currentUserId) {

        if (!currentUser.getId().equals(currentUserId)) {
            return null;
        } else {
            return orderRepository.findAllByAuthor(currentUser);
        }
    }
}
