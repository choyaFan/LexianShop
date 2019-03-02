package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.SpecialSectors;
import dao.SpecialSectorsDao;

@Service
public class SpecialSectorsService {

    @Resource
    private SpecialSectorsDao specialSectorsDao;

    public int insert(SpecialSectors pojo){
        return specialSectorsDao.insert(pojo);
    }

    public int insertList(List< SpecialSectors> pojos){
        return specialSectorsDao.insertList(pojos);
    }

    public List<SpecialSectors> select(SpecialSectors pojo){
        return specialSectorsDao.select(pojo);
    }

    public int update(SpecialSectors pojo){
        return specialSectorsDao.update(pojo);
    }

}
