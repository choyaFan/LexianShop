package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.dao.ShoppingCart;
import com.CAKESHOP.service.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class OrderController {
    @Autowired
    private OrdersService ordersService;

    @Autowired
    private ProductsService productsService;

    @Autowired
    private ProductsByStoreService productsByStoreService;

    @Resource
    ShoppingCartService shoppingCartService;
    @Resource
    StoresService storesService;



    @RequestMapping("/getUserOrder")
    public ModelAndView getUserOrders(HttpServletRequest request) throws Exception{
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        String userPhone = (String)session.getAttribute("userPhone");
        List<Orders> ordersList = ordersService.selectByUserId(userPhone);
        int orderId = ordersList.get(0).getOrderId();
        int i = 1;
        String orderName = productsService.searchById(ordersList.get(0).getProductId()).getProductName();
        Map<String, Orders> ordersMap = new HashMap<>();
        Map<String, Products> productsMap = new HashMap<>();
        ordersMap.put(orderName, ordersList.get(0));
        try {
            for(Orders orders :ordersList) {
                System.out.println(orders.getId());
                if(orders.getOrderId() == orderId){
                    //same order
                    Products product = productsService.searchById(orders.getProductId());
                    productsMap.put("order"+i+"products", product);
                }
                else{
                    //new order
                    i++;
                    orderId = orders.getOrderId();
                    orderName = productsService.searchById(orders.getProductId()).getProductName();
                    ordersMap.put(orderName, orders); //push new order
                    productsMap.put("order"+i+"products", productsService.searchById(orders.getProductId()));
                }
            }
            mv.addObject("productsMap",productsMap);
            mv.addObject("ordersMap",ordersMap);

        }
        catch (Exception e){
            System.out.println("cannot find any product");
        }
        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        mv.addObject("categoryjson", jsonObject);

        //添加购物车
        displayShoppingCart(request, mv);
        mv.setViewName("OrderList.jsp");
        return mv;
    }

    @RequestMapping("/getOrderProducts")
    public ModelAndView getOrderProducts(HttpServletRequest request, @RequestParam("orderId") int orderId){
        ModelAndView mv = new ModelAndView();
        List<Orders> ordersList = ordersService.selectByOrderId(orderId);
        List<Products> productsList = new ArrayList<Products>();
        List<String> cityList = new ArrayList<String>();
        Products product;
        ProductsByStore productsByStore;
        HttpSession session = request.getSession();
        int storeId = Integer.parseInt((String)session.getAttribute("storeId"));
        for(Orders orders : ordersList){
            product = productsService.searchById(orders.getProductId());
            productsByStore = productsByStoreService.selectByProductAndStore(product.getId(), orders.getStoreId());
            int inventory = productsByStore.getInventory() - orders.getAmount();
            productsByStoreService.updateInventory(orders.getStoreId(),product.getId(), inventory);
            productsList.add(product);
            cityList.add(storesService.querygetStoreName(orders.getStoreId()).getStoreName());
        }
        mv.addObject("productsList", productsList);
        mv.addObject("ordersList", ordersList);
        mv.addObject("cityList",cityList);
        mv.setViewName("orderPayment.jsp");
        return mv;
    }

    @RequestMapping("/getOrderDetail")
    public ModelAndView getOrderDetail(HttpServletRequest request, @RequestParam("orderId") int orderId) throws Exception{
        ModelAndView mv = getOrderProducts(request, orderId);
        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        mv.addObject("categoryjson", jsonObject);

        //添加购物车
        displayShoppingCart(request, mv);


        mv.setViewName("orderDetail.jsp");
        return mv;
    }

    @RequestMapping("receieve_product")
    public ModelAndView receieve_product(HttpServletRequest request) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        ordersService.updataOrder(Integer.parseInt(request.getParameter("orderId")),Integer.parseInt(request.getParameter("productId")));
        modelAndView.setViewName("getUserOrder");
        return modelAndView;
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
