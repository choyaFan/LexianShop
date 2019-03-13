package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.SpecialProducts;
import com.CAKESHOP.mapper.SpecialProductsMapper;
import com.CAKESHOP.service.SpecialProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpecialProductServiceImpl implements SpecialProductService {
    @Autowired
    private SpecialProductsMapper specialProductsMapper = null;

    @Override
    public List<SpecialProducts> searchByName(String sectorName){
        return specialProductsMapper.searchBySectorId(sectorName);
    }
}
