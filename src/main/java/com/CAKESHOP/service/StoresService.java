package com.CAKESHOP.service;

import com.CAKESHOP.dao.BranchStore;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface StoresService {
    void queryselectStoresByCity(HttpServletRequest request, ModelAndView modelAndView) throws Exception;
}
