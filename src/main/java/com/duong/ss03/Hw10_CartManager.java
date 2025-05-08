package com.duong.ss03;


import java.util.ArrayList;
import java.util.List;

public class Hw10_CartManager {
    public static List<Product_Hw10> carts = new ArrayList<>();
    public static List<Product_Hw10> productHw10s = new ArrayList<>();
    public static void initProducts (){
        productHw10s.add(new Product_Hw10(1,"laptop",1000));
        productHw10s.add(new Product_Hw10(2,"iphone",500));
        productHw10s.add(new Product_Hw10(3,"mouse",200));
    }
    public static void addProduct(Product_Hw10 p){
        carts.add(p);
    }

    public static void removeProduct (int id){
        carts.removeIf(p -> p.getId() == id);
    }

    public static double getTotalPrice (){
        return carts.stream()
                .mapToDouble(p-> p.getPrice())
                .sum();
    }

    public static boolean isExist (int id){
        return productHw10s.stream().anyMatch(p-> p.getId() == id);
    }

}
