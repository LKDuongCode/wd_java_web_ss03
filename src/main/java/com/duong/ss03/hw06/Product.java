package com.duong.ss03.hw06;

public class Product {
    private int id;
    private String name;
    private double price;
    private String des;
    private int stock;
    private boolean status;

    public Product(int id, String name, double price, String des, int stock, boolean status) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.des = des;
        this.stock = stock;
        this.status = status;
    }

    public Product() {
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

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
