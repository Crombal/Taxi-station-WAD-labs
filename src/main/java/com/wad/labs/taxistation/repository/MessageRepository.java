package com.wad.labs.taxistation.repository;

import com.wad.labs.taxistation.domain.Message;
import com.wad.labs.taxistation.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Long> {

    Iterable<Message> findAllByReceiver(User receiver);
}
