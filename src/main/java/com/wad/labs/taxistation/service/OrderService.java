package com.wad.labs.taxistation.service;

import com.wad.labs.taxistation.domain.Order;
import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.repository.OrderRepository;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Optional;

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

    public Iterable<Order> ordersListForDriver() {
        return orderRepository.findAllByCompleteIsFalse();
    }

    public void completeOrder(Long currentOrderId, User currentDriver) {
        Optional<Order> order = orderRepository.findById(currentOrderId);

        if (order.isPresent()) {
            Order completeOrder = order.get();

            completeOrder.setComplete(true);
            completeOrder.setDriver(currentDriver);

            orderRepository.save(completeOrder);
        }
    }
}
