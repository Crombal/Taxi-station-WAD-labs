package com.wad.labs.taxistation.repository;

import com.wad.labs.taxistation.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
