package com.codeup.spacelister.dao;

import com.codeup.spacelister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    // get a single add
    Ad selectedAd(long id);
    void update(Ad ad);
}
