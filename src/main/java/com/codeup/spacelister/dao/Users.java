package com.codeup.spacelister.dao;

import com.codeup.spacelister.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
}
