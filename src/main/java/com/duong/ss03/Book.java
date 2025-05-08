package com.duong.ss03;

public class Book {
    private String name;
    private String author;
    private int publicYear;

    public Book() {
    }

    public Book(String name, String author, int publicYear) {
        this.name = name;
        this.author = author;
        this.publicYear = publicYear;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPublicYear() {
        return publicYear;
    }

    public void setPublicYear(int publicYear) {
        this.publicYear = publicYear;
    }
}
