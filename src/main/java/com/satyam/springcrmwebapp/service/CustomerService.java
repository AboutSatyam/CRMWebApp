package com.satyam.springcrmwebapp.service;

import com.satyam.springcrmwebapp.model.Customer;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService implements ICustomerService {
    @Override
    public List<Customer> getCustomerInfo() {
        return List.of();
    }

    @Override
    public void registerCustomer(Customer customer) {

    }
}
