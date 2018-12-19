package com.codeup.spacelister.models;

import com.codeup.spacelister.util.Password;

public class User {
    private long id;
    private String username;
    private String email;
    private String password;
    private String planet;

    public User() {}

    public User(String username, String email, String password, String planet) {
        this.username = username;
        this.email = email;
        setPassword(password);
        this.planet = planet;
    }

    public User(long id, String username, String email, String password, String planet) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.planet = planet;
    }

    public String getPlanet() { return planet; }

    public void setPlanet(String planet) { this.planet = planet;}

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = Password.hash(password);
    }
}
