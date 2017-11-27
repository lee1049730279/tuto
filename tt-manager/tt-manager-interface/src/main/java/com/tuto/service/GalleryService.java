package com.tuto.service;

import com.tuto.pojo.po.TtTripPicture;

import java.util.List;

public interface GalleryService {
    List<TtTripPicture> listGallerysByTripId(Long tripId);
}
