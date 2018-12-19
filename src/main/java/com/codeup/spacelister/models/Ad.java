package com.codeup.spacelister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String planet;
    private String category;

    public Ad(long id, long userId, String title, String description, String planet, String category) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.planet = planet;
        this.category = category;
    }

    public Ad(long userId, String title, String description, String planet, String category) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.planet = planet;
        this.category = category;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return this.userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPlanet() {
        return this.planet;
    }

    public void setPlanet(String planet) {
        this.planet = planet;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
