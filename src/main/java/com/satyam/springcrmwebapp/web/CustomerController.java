package com.satyam.springcrmwebapp.web;

import com.satyam.springcrmwebapp.model.Customer;
import com.satyam.springcrmwebapp.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class CustomerController {
    private ICustomerService service;

    @Autowired
    public void setService(ICustomerService service) {
        this.service = service;
    }

    @GetMapping("/cxinfo")
    public String getAllCxData(Model model) {
        List<Customer> cxList = service.getCustomerInfo();
        model.addAttribute("customer",cxList);
        cxList.forEach(c -> System.out.println(c));
        return "customerinfo";
    }


}
