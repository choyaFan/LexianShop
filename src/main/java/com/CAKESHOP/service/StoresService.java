package com.CAKESHOP.service;

import com.CAKESHOP.dao.BranchStore;

import java.util.List;

public interface StoresService {
    List<BranchStore> queryselectStoresByCity(BranchStore branchStore);
}
