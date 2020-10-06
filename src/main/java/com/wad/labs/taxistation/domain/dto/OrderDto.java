package com.wad.labs.taxistation.domain.dto;

import com.wad.labs.taxistation.domain.User;

public class OrderDto {
    private Long id;
    private String from;
    private String to;
    private User author;
    private User driver;
    private boolean isComplete;

    public OrderDto(Long id, String from, String to, User author, User driver, boolean isComplete) {
        this.id = id;
        this.from = from;
        this.to = to;
        this.author = author;
        this.driver = driver;
        this.isComplete = isComplete;
    }

    public Long getId() {
        return id;
    }

    public String getFrom() {
        return from;
    }

    public String getTo() {
        return to;
    }

    public User getAuthor() {
        return author;
    }

    public User getDriver() {
        return driver;
    }

    public boolean isComplete() {
        return isComplete;
    }

    @Override
    public String toString() {
        return "OrderDto{" +
                "id=" + id +
                ", from='" + from + '\'' +
                ", to='" + to + '\'' +
                ", author=" + author +
                ", driver=" + driver +
                ", isComplete=" + isComplete +
                '}';
    }
}
