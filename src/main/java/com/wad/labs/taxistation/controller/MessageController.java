package com.wad.labs.taxistation.controller;

import com.wad.labs.taxistation.domain.Message;
import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MessageController {

    MessageService messageService;

    @Autowired
    public void setUserService(MessageService messageService) {
        this.messageService = messageService;
    }

    @GetMapping("/user-messages")
    public String getReceivedMessages(
            @AuthenticationPrincipal User currentUser,
            Model model
    ) {
        Iterable<Message> receivedMessages = messageService.messageListForUser(currentUser);

        model.addAttribute("receivedMessages", receivedMessages);

        return "user_messages";
    }
}
