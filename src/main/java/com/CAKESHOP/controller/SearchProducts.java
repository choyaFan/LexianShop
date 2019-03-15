package com.CAKESHOP.controller;

import com.CAKESHOP.dao.*;
import com.CAKESHOP.service.*;
import com.sun.xml.internal.ws.resources.HttpserverMessages;
import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.jws.WebParam;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.String;
import java.util.*;


@RestController
public class SearchProducts {
    @Resource
    ProductsService productsService;

    @Resource
    StoresService storesService;

    @Resource
    WishProductService wishProductService;

    @Resource
    OrdersService ordersService;

    @Resource
    ShoppingCartService shoppingCartService;

    @Resource
    ProductsByStoreService productsByStoreService;

    @RequestMapping(value = "shop_grid.action")
    public ModelAndView shop_grid(HttpServletRequest request) throws Exception {//Ĭ�Ͻ��棬������Ʒ����֯��Ʒ
        ModelAndView modelAndView = new ModelAndView();
        //����ҳ��ʾ
        //List<Products> products = productsService.queryallProducts();
        //��ҳ��ʾ
        productsService.queryshowProductsByPage(request, modelAndView);
        modelAndView.addObject("minMoney",0);
        modelAndView.addObject("maxMoney",100);
        modelAndView.addObject("storeId",100);

        //添加购物车
        HttpSession session = request.getSession(true);
        displayShoppingCart(request, modelAndView);

        List<String> cdmoney = new ArrayList<String>();
        String minMoney = "0";
        String maxMoney = "100";
        cdmoney.add(minMoney);
        cdmoney.add(maxMoney);
        session.setAttribute("cdmoney", cdmoney);
        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);
        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "search_products")
    public ModelAndView search_products(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("searchkey",request.getParameter("searchKey"));
        productsService.queryselectProducts(request, modelAndView);
        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);

        //添加购物车
        displayShoppingCart(request, modelAndView);

        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "show_products_by_condition")
    public ModelAndView show_products_by_condition(HttpServletRequest request) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        productsService.queryselectProducts(request, modelAndView);
        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);

        //添加购物车
        HttpSession session = request.getSession(true);
        displayShoppingCart(request, modelAndView);

        modelAndView.setViewName("shop_grid.jsp");
        return modelAndView;
    }


    @RequestMapping(value = "select_stores", method = RequestMethod.POST)
    public Map<String,List<BranchStore>> select_stores(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        List<BranchStore> branchStoreList = storesService.queryselectStoresByCity(request,modelAndView);
        Map<String, List<BranchStore>> map =  new HashMap<String, List<BranchStore>>();
        map.put("branchStoreList",branchStoreList);
        return map;
    }

    @RequestMapping(value = "stores_changed")
    public ModelAndView stores_changed(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        storesService.queryselectStoresByCity(request,modelAndView);
        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        modelAndView.addObject("categoryjson", jsonObject);
        modelAndView.setViewName("getSector");
        getRecommandList(request);
        return modelAndView;
    }

    @RequestMapping(value = "add_condition")
    public ModelAndView add_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        List<String> cdclass;
        if (session.getAttribute("cdclass") == null) {
            cdclass = new ArrayList<String>();
        } else {
            cdclass = (List<String>) session.getAttribute("cdclass");
        }
        String tmp = (String) request.getAttribute("condition");
        cdclass.add(request.getParameter("condition"));
        session.setAttribute("cdclass", cdclass);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "refresh")
    public ModelAndView refresh(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.invalidate();
        modelAndView.setViewName("shop_grid.action");
        return modelAndView;
    }

    @RequestMapping(value = "remove_condition")
    public ModelAndView remove_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        List<String> cdclass = (List<String>) session.getAttribute("cdclass");
        remove(cdclass,request.getParameter("condition"));
        session.setAttribute("cdclass",cdclass);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "empty_condition")
    public ModelAndView empty_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("cdclass",null);
        session.setAttribute("cdmoney", null);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "money_condition")
    public ModelAndView money_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        List<String> cdmoney = (List<String>) session.getAttribute("cdmoney");
        if(session.getAttribute("cdmoney")==null)
            cdmoney = new ArrayList<String>();
        String minMoney = request.getParameter("minMoney");
        if(minMoney==null)
            minMoney = cdmoney.get(0);
        String maxMoney = request.getParameter("maxMoney");
        if(maxMoney==null)
            maxMoney = cdmoney.get(1);
        cdmoney.add(minMoney);
        cdmoney.add(maxMoney);
        session.setAttribute("cdmoney", cdmoney);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "remove_money_condition")
    public ModelAndView remove_money_condition(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("cdmoney",null);
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "sort_products")
    public ModelAndView sort_products(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("sortWay",Integer.parseInt(request.getParameter("sortWay")));
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "limit_products")
    public ModelAndView limit_products(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(true);
        session.setAttribute("limitWay",Integer.parseInt(request.getParameter("limitWay")));
        modelAndView.setViewName("show_products_by_condition");
        return modelAndView;
    }

    @RequestMapping(value = "add_to_wish")
    public ModelAndView add_to_wish(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        wishProductService.queryaddWish(request,modelAndView);
        modelAndView.setViewName("");
        return modelAndView;
    }

    public static void remove(List<String> list, String target) {
        int size = list.size();
        for (int i = size - 1; i >= 0; i--) {
            String item = list.get(i);
            if (target.equals(item))
                list.remove(item);
        }
    }

    public void getRecommandList(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        int storeId = Integer.parseInt((String)session.getAttribute("storeId"));
        Map<String,Object> recommandMap = RecommandationSystem.getTemp();
        LinkedList<Map.Entry<String,Double>> recommandList = (LinkedList<Map.Entry<String,Double>>) recommandMap.get("13700000000");
        List<DisplayProducts> recommandTrueList = new ArrayList<DisplayProducts>();
        List<Orders> ordersList = ordersService.selectByUserId("13700000000");
        boolean flag=false;
        for(Map.Entry<String, Double> tmp: recommandList) {
            String productIdFromRecommand = tmp.getKey();
            for(Orders order: ordersList) {
                String productIdFromOrders = String.valueOf(order.getProductId());
                if(productIdFromOrders.equals(productIdFromRecommand)) {
                    flag=true;
                }
                if(flag)
                    break;

            }
            if(!flag) {
                DisplayProducts products = productsService.queryselectDisplayProductsById(Integer.parseInt(productIdFromRecommand), storeId);
                recommandTrueList.add(products);
            }
            else
                flag=false;
        }
        session.setAttribute("recommandTrueList",recommandTrueList);
    }

    public void displayShoppingCart(HttpServletRequest request, ModelAndView mv) throws Exception {
        int i=0;
        HttpSession session = request.getSession(true);
        String userPhone = (String)session.getAttribute("userPhone");
        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setUserPhone(userPhone);
        List<ShoppingCart> shoppingCartsList = shoppingCartService.queryCartInformation(shoppingCart);
        int shoppingCartProductsNum = shoppingCartsList.size();
        mv.addObject("shoppingCartsList",shoppingCartsList);

        int productIdArray[] = new int[shoppingCartProductsNum];// 从返回值中获取商品ID
        int StoreIdArray[] = new int[shoppingCartProductsNum];
        String pictureUrlArray[] = new String[shoppingCartProductsNum];//通过商品ID获得图片的url，准备传到界面上显示
        String productNameArray[] = new String[shoppingCartProductsNum];
        String storeNameArray[] = new String[shoppingCartProductsNum];
        double productPriceArray[] = new double[shoppingCartProductsNum];
        double totalPrice = 0;

        for(i = 0;i < shoppingCartProductsNum;i++){
            productIdArray[i] = shoppingCartsList.get(i).getProductId();
            StoreIdArray[i] = shoppingCartsList.get(i).getStoreId();
            pictureUrlArray[i] = shoppingCartService.queryPictureUrl(productIdArray[i]);
            productNameArray[i] = shoppingCartService.queryProductName(productIdArray[i]);
            storeNameArray[i] = shoppingCartService.queryStoreName(StoreIdArray[i]);
            ProductsByStore tmp = productsByStoreService.selectByProductAndStore(shoppingCartsList.get(i).getProductId(),shoppingCartsList.get(i).getStoreId());
            productPriceArray[i] = tmp.getOriginalPrice()*tmp.getDiscount();
            totalPrice+=productPriceArray[i]*shoppingCartsList.get(i).getAmount();
        }
        List<String> pictureUrlArrayList = Arrays.asList(pictureUrlArray);
        List<String> productNameArrayList = Arrays.asList(productNameArray);
        List<String> storeNameArrayList = Arrays.asList(storeNameArray);

        mv.addObject("pictureUrlArrayList", pictureUrlArrayList);
        mv.addObject("productNameArrayList", productNameArrayList);
        mv.addObject("storeNameArrayList", storeNameArrayList);
        mv.addObject("shoppingCartsList", shoppingCartsList);
        mv.addObject("productPriceArray",productPriceArray);
        mv.addObject("totalPrice",totalPrice);
    }


}
