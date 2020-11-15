package com.wad.labs.taxistation.controller;

import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SendMessageController {

    MessageService messageService;

    @Autowired
    public void setUserService(MessageService messageService) {
        this.messageService = messageService;
    }

    @PostMapping("/send")
    public String sendMessage(
            @AuthenticationPrincipal User currentUser,
            @RequestParam("receiver") String receiver,
            @RequestParam("messageName") String messageName,
            @RequestParam("messageSubject") String messageSubject,
            @RequestParam("messageText") String messageText
    ) {

        messageService.addMessage(messageName, messageSubject, messageText, currentUser, receiver);

        return "redirect:/user-messages";

    }
}
