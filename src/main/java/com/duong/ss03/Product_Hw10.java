package com.duong.ss03;

public class Product_Hw10 {
    private int id;
    private String name;
    private double price;

    public Product_Hw10(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Product_Hw10() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
