package com.wad.labs.taxistation.domain;

import com.wad.labs.taxistation.domain.util.NameHelper;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Please, fill the message name!")
    @Length(max = 255, message = "Too long (more than 255 symbols!")
    private String messageName;

    private String messageSubject;

    private String messageText;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "sender_id")
    private User sender;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "receiver_id")
    private User receiver;

    private String creationDate;

    public Message() {
    }

    public Message(String messageName, String messageSubject, String messageText, User sender, User receiver) {
        this.messageName = messageName;
        this.messageSubject = messageSubject;
        this.messageText = messageText;
        this.sender = sender;
        this.receiver = receiver;
    }

    public String getSenderName() {
        return NameHelper.getUserName(sender);
    }

    public String getReceiverName() {
        return NameHelper.getUserName(receiver);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMessageName() {
        return messageName;
    }

    public void setMessageName(String messageName) {
        this.messageName = messageName;
    }

    public String getMessageSubject() {
        return messageSubject;
    }

    public void setMessageSubject(String messageSubject) {
        this.messageSubject = messageSubject;
    }

    public String getMessageText() {
        return messageText;
    }

    public void setMessageText(String messageText) {
        this.messageText = messageText;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }
}
