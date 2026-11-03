package com.satyam.springcrmwebapp.service;

import com.satyam.springcrmwebapp.model.Customer;
import java.util.List;

public interface ICustomerService {

    List<Customer> getCustomerInfo();

    void registerCustomer(Customer customer);

    Customer fetchCxById(Integer id);

    void updateCustomer(Customer customer);

    void deleteCxRecord(Integer id);
}