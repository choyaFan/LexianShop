package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.SpecialSectors;
import dao.SpecialSectorsMapper;

@Service
public class SpecialSectorsService {

    @Resource
    private SpecialSectorsMapper specialSectorsMapper;

    public int insert(SpecialSectors pojo){
        return specialSectorsMapper.insert(pojo);
    }

    public int insertList(List< SpecialSectors> pojos){
        return specialSectorsMapper.insertList(pojos);
    }

    public List<SpecialSectors> select(SpecialSectors pojo){
        return specialSectorsMapper.select(pojo);
    }

    public int update(SpecialSectors pojo){
        return specialSectorsMapper.update(pojo);
    }

}
