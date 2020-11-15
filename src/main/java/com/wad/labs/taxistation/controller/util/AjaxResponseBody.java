package com.wad.labs.taxistation.controller.util;

import com.wad.labs.taxistation.domain.Message;

public class AjaxResponseBody {
    String responseMessage;

    Message message;

    public String getResponseMessage() {
        return responseMessage;
    }

    public void setResponseMessage(String responseMessage) {
        this.responseMessage = responseMessage;
    }

    public Message getMessage() {
        return message;
    }

    public void setMessage(Message message) {
        this.message = message;
    }
}
