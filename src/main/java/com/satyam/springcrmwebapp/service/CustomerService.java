package com.satyam.springcrmwebapp.service;

import com.satyam.springcrmwebapp.model.Customer;
import com.satyam.springcrmwebapp.repo.ICustomerReop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService implements ICustomerService {

    private ICustomerReop repo;

    @Autowired
    public void setRepo(ICustomerReop repo) {
        this.repo = repo;
    }

    @Override
    public List<Customer> getCustomerInfo() {
        return (List<Customer>) repo.findAll();
    }

    @Override
    public void registerCustomer(Customer customer) {
        repo.save(customer);
    }
}
