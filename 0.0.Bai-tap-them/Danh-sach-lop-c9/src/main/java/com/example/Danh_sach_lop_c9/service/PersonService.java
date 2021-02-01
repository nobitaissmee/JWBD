package com.example.Danh_sach_lop_c9.service;

import com.example.Danh_sach_lop_c9.model.Person;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PersonService {

    private static Map<Integer, Person> persons;

    static {
        persons = new HashMap<>();
        persons.put(1, new Person(1,"Thang", 19));
        persons.put(2, new Person(2,"Hai", 20));
        persons.put(3,new Person(3,"Phuoc",21));
        persons.put(4,new Person(4,"Tu",22));
        persons.put(5,new Person(5,"Huy Anh",23));
    }

    public List<Person> findAll() {
        return new ArrayList<>(persons.values());
    }

    public Person findById(int id){
        return persons.get(id);
    }
}
