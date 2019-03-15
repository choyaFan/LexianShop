package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Browse;
import com.CAKESHOP.service.BrowseHistoryService;

import com.CAKESHOP.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

@Controller
public class BrowseHistory {
    @Autowired
    private BrowseHistoryService browseHistoryService;
    public Browse browse = new Browse();
    public User userTransfer = new User();

    @RequestMapping(value = "browsehistory.action")
    public ModelAndView browseGet(HttpServletRequest request) {
        GlobalStatus globalStatus = new GlobalStatus();
        ModelAndView modelAndView =new ModelAndView();

        //通过手机号来查询浏览记录
        browse.setUserPhone(userTransfer.user_phone_transfer);
        List<Browse> browseData = browseHistoryService.selectBrowseHistory(browse);

        int num = browseData.size();
        int productIdArray[] = new int[num];
        int StoreIdArray[] = new int[num];

        String productNameArray[] = new String[num];
        String storeNameArray[] = new String[num];

        for(int i = 0;i < num;i++){
            productIdArray[i] = browseData.get(i).getProductId();
            StoreIdArray[i] = browseData.get(i).getStoreId();

            productNameArray[i] = browseHistoryService.queryProductName(productIdArray[i]);
            storeNameArray[i] = browseHistoryService.queryStoreName(StoreIdArray[i]);

        }

        List<String> productNameArrayList = Arrays.asList(productNameArray);
        List<String> storeNameArrayList = Arrays.asList(storeNameArray);

        System.out.println("浏览信息"+browseData);
        if(globalStatus.get()==1){
            modelAndView.addObject("productNameArrayList",productNameArrayList);
            modelAndView.addObject("storeNameArrayList",storeNameArrayList);
            modelAndView.addObject("browseData",browseData);
            modelAndView.setViewName("browsehistory.jsp");
        }
        else{
            modelAndView.setViewName("sign_in.jsp");
        }
        return modelAndView;
    }
}
