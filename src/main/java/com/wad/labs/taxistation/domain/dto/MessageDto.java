package com.wad.labs.taxistation.domain.dto;

import com.wad.labs.taxistation.domain.User;

public class MessageDto {
    private Long id;
    private String messageName;
    private String messageSubject;
    private String messageText;
    private User sender;
    private User receiver;

    public MessageDto(Long id, String messageName, String messageSubject, String messageText, User sender, User receiver) {
        this.id = id;
        this.messageName = messageName;
        this.messageSubject = messageSubject;
        this.messageText = messageText;
        this.sender = sender;
        this.receiver = receiver;
    }

    public Long getId() {
        return id;
    }

    public String getMessageName() {
        return messageName;
    }

    public String getMessageSubject() {
        return messageSubject;
    }

    public String getMessageText() {
        return messageText;
    }

    public User getSender() {
        return sender;
    }

    public User getReceiver() {
        return receiver;
    }

    @Override
    public String toString() {
        return "MessageDto{" +
                "id=" + id +
                ", messageName='" + messageName + '\'' +
                ", messageSubject='" + messageSubject + '\'' +
                ", messageText='" + messageText + '\'' +
                ", sender=" + sender +
                ", receiver=" + receiver +
                '}';
    }
}
