package com.CAKESHOP.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.CAKESHOP.POJO.Citys;
import dao.CitysMapper;

@Service
public class CitysService {

    @Resource
    private CitysMapper citysMapper;

    public int insert(Citys pojo){
        return citysMapper.insert(pojo);
    }

    public int insertList(List< Citys> pojos){
        return citysMapper.insertList(pojos);
    }

    public List<Citys> select(Citys pojo){
        return citysMapper.select(pojo);
    }

    public int update(Citys pojo){
        return citysMapper.update(pojo);
    }

}
