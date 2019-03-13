package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.SpecialSectors;
import com.CAKESHOP.mapper.SpecialSectorsMapper;
import com.CAKESHOP.service.SectorService;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SectorServiceImpl implements SectorService {
    @Autowired
    private SpecialSectorsMapper specialSectorsMapper= null;
    @Override
    public List<SpecialSectors> getAllSpecialSector(){
        return specialSectorsMapper.selectAll();
    }
}
