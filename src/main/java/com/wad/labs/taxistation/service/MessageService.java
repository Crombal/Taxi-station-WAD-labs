package com.wad.labs.taxistation.service;

import com.wad.labs.taxistation.domain.Message;
import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class MessageService {

    MessageRepository messageRepository;

    @Autowired
    public void setMessageRepository(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public void addMessage(String messageName, String messageSubject, String messageText, User user, String receiver) {

        Message message = new Message(messageName, messageSubject, messageText, user, (User) userService.loadUserByUsername(receiver));

        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        String date = formatter.format(calendar.getTime());

        message.setCreationDate(date);

        messageRepository.save(message);
    }

    public Iterable<Message> messageListForUser(User currentUser) {
        return messageRepository.findAllByReceiver(currentUser);
    }
}
