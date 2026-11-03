package com.satyam.springcrmwebapp.service;

import com.satyam.springcrmwebapp.model.Customer;

import java.util.List;

public interface ICustomerService {
    public List<Customer> getCustomerInfo();

    public void registerCustomer(Customer customer);
}
