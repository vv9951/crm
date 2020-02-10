package com.huaxin.crm.customermgr.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.huaxin.crm.customermgr.entity.Customer;
import com.huaxin.crm.customermgr.service.CustomerServiceIf;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Resource
    CustomerServiceIf service;

    @RequestMapping(value = "/toAdd", method = RequestMethod.GET)
    public String toAdd() {
        return "customer/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(Customer customer) {
        boolean b = service.add(customer);

        return b ? "success" : "fail";
    }

    @RequestMapping(value = "/toList", method = RequestMethod.GET)
    public String toList() {
        return "customer/list";
    }

    @RequestMapping(value = "/listByPage", method = RequestMethod.POST)
    @ResponseBody
    public IPage listByPage(Integer currentPage) {
        IPage page = service.findByPage(currentPage, 5);
        return page;
    }

    @RequestMapping(value = "/toUpdate", method = RequestMethod.GET)
    public String toUpdate(Integer uuid, Model model) {
        model.addAttribute("uuid",uuid);

        Customer customer = service.findById(uuid);
        model.addAttribute("customer",customer);

        return "customer/update";
    }


    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(Integer uuid, Customer customer) {
        return "success";
    }

    @RequestMapping(value = "/delete")
    public String delete(Integer uuid) {
        boolean b = service.delete(uuid);
        return b ? "success" : "fail";
    }
}
