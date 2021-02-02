package com.example.Quan_ly_san_pham.service;


import com.example.Quan_ly_san_pham.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> productList;

    static{
        productList=new HashMap<>();
        productList.put(1,new Product(1,"Hai",5.00,"Babies Cute","Thang"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public void save(Product product) {
        productList.put(product.getId(),product);
    }

    @Override
    public void update(int id, Product product) {
        productList.put(id,product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        ArrayList<Product> products=new ArrayList<>();
        for(Product product:productList.values()){
            if(product.getName().contains(name)){
                products.add(product);
            }
        }
        return products;
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }
}
