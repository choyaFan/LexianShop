package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.Citys;
import com.CAKESHOP.dao.CitysDao;

@Service
public class CitysService {

    @Resource
    private CitysDao citysDao;

    public int insert(Citys pojo){
        return citysDao.insert(pojo);
    }

    public int insertList(List< Citys> pojos){
        return citysDao.insertList(pojos);
    }

    public List<Citys> select(Citys pojo){
        return citysDao.select(pojo);
    }

    public int update(Citys pojo){
        return citysDao.update(pojo);
    }

}
