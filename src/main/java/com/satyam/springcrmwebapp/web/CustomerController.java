package com.satyam.springcrmwebapp.web;

import com.satyam.springcrmwebapp.model.Customer;
import com.satyam.springcrmwebapp.service.ICustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CustomerController {

    private ICustomerService service;

    @Autowired
    public void setService(ICustomerService service) {
        this.service = service;
    }

    // Display all customers
    @GetMapping("/cxinfo")
    public String getAllCxData(Model model) {

        List<Customer> cxList = service.getCustomerInfo();

        model.addAttribute("customer", cxList);

        cxList.forEach(c -> System.out.println(c));

        return "customerinfo";
    }

    // Open registration form
    @GetMapping("/showForm")
    public String getForm() {
        return "showform";
    }

    // Register customer
    @PostMapping("/registerCustomer")
    public String registerCustomer(
            @ModelAttribute("customer") Customer customer) {

        service.registerCustomer(customer);

        return "redirect:/cxinfo";
    }

    // Open update form
    @GetMapping("/updateForm")
    public String updateCustomer(
            @RequestParam("cxid") Integer id, Model model) {

        Customer cx = service.fetchCxById(id);

        if (cx == null) {
            return "redirect:/cxinfo";
        }

        model.addAttribute("customer", cx);

        return "updateform";
    }

    // Update customer
    @PostMapping("/updateCustomer")
    public String saveUpdatedCustomer(
            @ModelAttribute("customer") Customer customer) {

        service.updateCustomer(customer);

        return "redirect:/cxinfo";
    }

    // Delete customer
    @GetMapping("/deleteData")
    public String deleteCustomer(
            @RequestParam("cxid") Integer id) {

        service.deleteCxRecord(id);

        return "redirect:/cxinfo";
    }
}