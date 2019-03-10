package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.BranchStore;
import com.CAKESHOP.mapper.BranchStoreMapper;
import com.CAKESHOP.service.StoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StoresServiceImpl implements StoresService {
    @Resource
    private BranchStoreMapper branchStoreMapper;
    @Override
    public List<BranchStore> queryselectStoresByCity(BranchStore branchStore){
        return branchStoreMapper.select(branchStore);
    }
}
