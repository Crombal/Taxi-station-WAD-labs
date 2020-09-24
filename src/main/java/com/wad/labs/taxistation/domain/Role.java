package com.wad.labs.taxistation.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, ADMIN, DRIVER;

    @Override
    public String getAuthority() {
        return name();
    }
}
