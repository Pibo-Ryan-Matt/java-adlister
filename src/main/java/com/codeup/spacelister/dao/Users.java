package com.codeup.spacelister.dao;

import com.codeup.spacelister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    void update(User user);
    List<String> findDuplicates(int location);
}
