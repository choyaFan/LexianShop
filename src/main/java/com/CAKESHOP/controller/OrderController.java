package com.CAKESHOP.controller;

import com.CAKESHOP.dao.Orders;
import com.CAKESHOP.dao.Products;
import com.CAKESHOP.dao.ProductsByStore;
import com.CAKESHOP.service.OrdersService;
import com.CAKESHOP.service.ProductsByStoreService;
import com.CAKESHOP.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class OrderController {
    @Autowired
    private OrdersService ordersService;

    @Autowired
    private ProductsService productsService;

    @Autowired
    private ProductsByStoreService productsByStoreService;

    @RequestMapping("/getUserOrder")
    public ModelAndView getUserOrders(HttpServletRequest request){
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
        mv.setViewName("OrderList.jsp");
        return mv;
    }

    @RequestMapping("/getOrderProducts")
    public ModelAndView getOrderProducts(HttpServletRequest request, @RequestParam("orderId") int orderId){
        ModelAndView mv = new ModelAndView();
        List<Orders> ordersList = ordersService.selectByOrderId(orderId);
        List<Products> productsList = new ArrayList<Products>();
        Products product;
        ProductsByStore productsByStore;
        HttpSession session = request.getSession();
        int storeId = Integer.parseInt((String)session.getAttribute("storeId"));
        for(Orders orders : ordersList){
            product = productsService.searchById(orders.getProductId());
            productsByStore = productsByStoreService.selectByProductAndStore(product.getId(), storeId);
            int inventory = productsByStore.getInventory() - orders.getAmount();
            productsByStoreService.updateInventory(storeId,product.getId(), inventory);
            productsList.add(product);
        }
        mv.addObject("productsList", productsList);
        mv.addObject("ordersList", ordersList);
        mv.setViewName("orderPayment.jsp");
        return mv;
    }

    @RequestMapping("/getOrderDetail")
    public ModelAndView getOrderDetail(HttpServletRequest request, @RequestParam("orderId") int orderId){
        ModelAndView mv = getOrderProducts(request, orderId);
        mv.setViewName("orderDetail.jsp");
        return mv;
    }
}
