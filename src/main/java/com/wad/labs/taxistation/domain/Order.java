package com.wad.labs.taxistation.domain;

import com.wad.labs.taxistation.domain.util.OrderHelper;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Entity
@Table(name = "ordr")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Please, fill the 'From'!")
    @Length(max = 255, message = "Too long (more than 255 symbols!")
    private String fromStr;

    @NotBlank(message = "Please, fill the 'To'!")
    @Length(max = 255, message = "Too long (more than 255 symbols!")
    private String toStr;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "author_id")
    private User author;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "driver_id")
    private User driver;

    @Length(max = 255, message = "Too long (more than 255 symbols!")
    private String creationDate;

    private boolean isComplete;

    public Order() {
    }

    public Order(String fromStr, String toStr, User author) {
        this.fromStr = fromStr;
        this.toStr = toStr;
        this.author = author;
        this.isComplete = false;
    }

    public String getAuthorName() {
        return OrderHelper.getUserName(author);
    }

    public String getDriverName() {
        return OrderHelper.getUserName(driver);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFromStr() {
        return fromStr;
    }

    public void setFromStr(String from) {
        this.fromStr = from;
    }

    public String getToStr() {
        return toStr;
    }

    public void setToStr(String toStr) {
        this.toStr = toStr;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public User getDriver() {
        return driver;
    }

    public void setDriver(User driver) {
        this.driver = driver;
    }

    public boolean isComplete() {
        return isComplete;
    }

    public void setComplete(boolean complete) {
        isComplete = complete;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String date) {
        this.creationDate = date;
    }
}
