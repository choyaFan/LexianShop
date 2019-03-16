package com.CAKESHOP.controller;

import com.CAKESHOP.service.OrdersService;
import com.CAKESHOP.service.PaymentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class PaymentController {
    @Autowired
    private OrdersService ordersService = null;
    @Autowired
    private PaymentService paymentService = null;
    @RequestMapping("/payment")
    public ModelAndView orderPayment(HttpServletRequest request,
                                     @RequestParam("totalPrice")int totalPrice,
                                     @RequestParam("orderId")int orderId){
        System.out.println(orderId);
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        String userPhone = (String)session.getAttribute("userPhone");
        if(paymentService.paymentJudge(userPhone, totalPrice)){
            mv.addObject("orderId", orderId);
            mv.addObject("totalPrice", totalPrice);
            mv.setViewName("paymentSuccess.jsp");
        }
        else {
            mv.setViewName("paymentFail.jsp");
            //delete the order
            ordersService.deleteOrder(orderId);
        }
        return mv;
    }
}
