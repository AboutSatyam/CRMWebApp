package com.satyam.springcrmwebapp.repo;

import com.satyam.springcrmwebapp.model.Customer;
import org.springframework.data.repository.CrudRepository;

public interface ICustomerReop extends CrudRepository<Customer, Integer> {
}
