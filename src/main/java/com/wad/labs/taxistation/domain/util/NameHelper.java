package com.wad.labs.taxistation.domain.util;

import com.wad.labs.taxistation.domain.User;

public abstract class NameHelper {
    public static String getUserName(User user) {
        return user != null ? user.getUsername() : "<none>";
    }
}
