package com.wad.labs.taxistation.controller;

import com.wad.labs.taxistation.controller.util.ControllerUtils;
import com.wad.labs.taxistation.domain.Order;
import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.io.IOException;
import java.util.Map;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @GetMapping("/main")
    public String main(
            @AuthenticationPrincipal User user
    ) {
        return "main";
    }

    @PostMapping("/main")
    public String addOrder(
            @AuthenticationPrincipal User user,
            @Valid Order order,
            BindingResult bindingResult,
            Model model
    ) throws IOException {

        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errorsMap);
            model.addAttribute("order", order);
        } else {
            model.addAttribute("order", null);

            orderService.addOrder(order, user);
        }

        return "redirect:/main";
    }

    @GetMapping("/user-orders/{currentUserId}")
    public String userOrders(
            @AuthenticationPrincipal User currentUser,
            @PathVariable Long currentUserId,
            Model model
    ) {
        Iterable<Order> orders = orderService.ordersListForUser(currentUser, currentUserId);

        model.addAttribute("orders", orders);

        return "userOrders";
    }

    @GetMapping("/driver-orders")
    public String driverOrders(
            Model model
    ) {
        Iterable<Order> driverOrders = orderService.ordersListForDriver();

        model.addAttribute("driverOrders", driverOrders);

        return "driverOrders";
    }

    @PostMapping("/complete-order/{currentOrderId}")
    public String completeOrder(
            @AuthenticationPrincipal User currentDriver,
            @PathVariable Long currentOrderId,
            Model model
    ) {
        orderService.completeOrder(currentOrderId, currentDriver);

        Iterable<Order> driverOrders = orderService.ordersListForDriver();

        model.addAttribute("driverOrders", driverOrders);

        return "driverOrders";
    }
}
