package com.CAKESHOP.controller;

import com.CAKESHOP.dao.*;
import com.CAKESHOP.service.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class IndexController {
    @Autowired
    private ProductsByStoreService productsByStoreService = null;
    @Autowired
    private ProductsService productsService = null;
    @Autowired
    private SectorService sectorService = null;
    @Autowired
    private SpecialProductService specialProductService = null;
    @Resource
    ShoppingCartService shoppingCartService;

    @RequestMapping("/getStoreProducts")
    public ModelAndView getIndexProduct(@RequestParam("storeId") int storeId){
        List<ProductsByStore> productsByStoreList = productsByStoreService.selectByStoreId(storeId);
        List<Products> productsList = new ArrayList<>();
        for(ProductsByStore productsByStore : productsByStoreList){
            productsList.add(productsService.searchById(productsByStore.getProductId()));
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("productsByStoreList",productsByStoreList);
        mv.addObject("productsList", productsList);
        return mv;
    }

    @RequestMapping("/getSector")
    public ModelAndView getSector(HttpServletRequest request) throws  Exception{
        ModelAndView mv;
        System.out.println("inter into getSector");
        List<SpecialSectors> sectorsList = sectorService.getAllSpecialSector();
        List<Products> products = new ArrayList<>();
        List<SpecialProducts> specialProducts;
        List<ProductsByStore> productsByStores = new ArrayList<>();
        int i; List<Integer> num = new ArrayList<>();
        for(SpecialSectors specialSectors : sectorsList){
            i = 0;
            specialProducts = specialProductService.searchByName(specialSectors.getSectorName());
            for(SpecialProducts specialProduct : specialProducts){
                i++;
                products.add(productsService.searchById(specialProduct.getProductId()));
                productsByStores.add(productsByStoreService.selectByProductAndStore(specialProduct.getProductId(), 1));
            }
            num.add(i);
        }
        HttpSession session = request.getSession();
        int storeId = 0;
        Object obj = session.getAttribute("storeId");
        if(obj != null){
            System.out.println("obj != null");
            storeId = Integer.parseInt((String)session.getAttribute("storeId"));
        }
        if(storeId != 0) mv = getIndexProduct(storeId);
        else mv = new ModelAndView();
        mv.addObject("num", num);
        mv.addObject("specialProductsList", products);
        mv.addObject("sectorsList",sectorsList);
        mv.addObject("productsByStores", productsByStores);

        //添加购物车
        displayShoppingCart(request,mv);

        JSONObject jsonObject = productsService.getCategoriesMapperJson();
        mv.addObject("categoryjson", jsonObject);

        mv.setViewName("index.jsp");
        return mv;
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
