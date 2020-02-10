package com.huaxin.crm.customermgr.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.huaxin.crm.customermgr.entity.Customer;

import java.util.List;

public interface CustomerServiceIf {

    List<Customer> findAll();

    IPage findByPage(Integer currentPage, Integer size);

    boolean add(Customer customer);

    boolean delete(Integer uuid);

    Customer findById(Integer uuid);
}
