package com.CAKESHOP.service;

import com.CAKESHOP.dao.SpecialProducts;

import java.util.List;

public interface SpecialProductService {
    List<SpecialProducts> searchByName(String sectorName);
}
