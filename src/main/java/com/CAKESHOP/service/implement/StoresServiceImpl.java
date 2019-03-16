package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.BranchStore;
import com.CAKESHOP.mapper.BranchStoreMapper;
import com.CAKESHOP.service.StoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class StoresServiceImpl implements StoresService {
    @Resource
    private BranchStoreMapper branchStoreMapper;
    @Override
    public List<BranchStore> queryselectStoresByCity(HttpServletRequest request, ModelAndView modelAndView) throws Exception {
        HttpSession session = request.getSession(true);
        BranchStore branchStore = new BranchStore();

        if (request.getParameter("province") != null) {
            branchStore.setProvince(request.getParameter("province"));
            session.setAttribute("province", request.getParameter("province"));
        } else
            branchStore.setProvince((String) session.getAttribute("province"));
        if (request.getParameter("city") != null) {
            branchStore.setCity(request.getParameter("city"));
            session.setAttribute("city", request.getParameter("city"));
        } else
            branchStore.setCity((String) session.getAttribute("city"));
        if (request.getParameter("district") != null) {
            branchStore.setDistrict(request.getParameter("district"));
            session.setAttribute("district", request.getParameter("district"));
        } else
            branchStore.setDistrict((String) session.getAttribute("district"));
        List<BranchStore> branchStoreListAll = branchStoreMapper.select(branchStore);
        if (request.getParameter("store") != null)
            branchStore.setStoreName(request.getParameter("store"));

        List<BranchStore> branchStoreList = branchStoreMapper.select(branchStore);

        modelAndView.addObject("province", session.getAttribute("province"));
        modelAndView.addObject("city", session.getAttribute("city"));
        modelAndView.addObject("district", session.getAttribute("district"));


        if (request.getParameter("store") != null) {
            session.setAttribute("storeName", request.getParameter("store"));
            session.setAttribute("storeId", Integer.toString(branchStoreList.get(0).getId()));
            modelAndView.addObject("store", session.getAttribute("storeName"));
        }
        return branchStoreListAll;
    }

    @Override
    public BranchStore querygetStoreName(int storeId){
        BranchStore branchStore = new BranchStore();
        branchStore.setId(storeId);
        return branchStoreMapper.select(branchStore).get(0);
    }

}
