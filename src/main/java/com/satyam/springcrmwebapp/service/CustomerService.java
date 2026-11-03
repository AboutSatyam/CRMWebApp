package com.satyam.springcrmwebapp.service;

import com.satyam.springcrmwebapp.model.Customer;

import java.util.List;

public class CustomerService implements ICustomerService {
    @Override
    public List<Customer> getCustomerInfo() {
        return List.of();
    }

    @Override
    public void registerCustomer(Customer customer) {

    }
}
