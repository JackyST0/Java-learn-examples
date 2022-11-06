package com.javaee.xml;


import lombok.Data;


public class Car {
    Long id;
    Double price;
    String brand;
    String color;

    @Override
    public String toString() {
        return "Car{" + "id=" + id + ", price=" + price + ", brand='" + brand + '\'' + ", color='" + color + '\'' + '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
