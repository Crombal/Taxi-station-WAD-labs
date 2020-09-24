package com.wad.labs.taxistation.service;

import com.wad.labs.taxistation.domain.Role;
import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.repository.UserRepository;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Collections;

import static org.hamcrest.CoreMatchers.is;
import static org.mockito.Mockito.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@TestPropertySource("/application-test.properties")
class UserServiceTest {

    @Autowired
    private UserService userService;

    @MockBean
    private UserRepository userRepository;

    @MockBean
    private PasswordEncoder passwordEncoder;

    @Test
    void addUserTest() {
        User user = new User();

        boolean isUserCreated = userService.addUser(user);

        Assert.assertTrue(isUserCreated);
        Assert.assertTrue(is(user.getRoles()).matches(Collections.singleton(Role.USER)));

        verify(userRepository, times(1)).save(user);
    }

    @Test
    public void addUserFailTest() {
        User user = new User();

        user.setUsername("John");

        doReturn(user)
                .when(userRepository)
                .findByUsername("John");

        boolean isUserCreated = userService.addUser(user);

        Assert.assertFalse(isUserCreated);

        verify(userRepository, times(0)).save(any(User.class));
    }
}
