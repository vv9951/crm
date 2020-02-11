package com.huaxin.crm.customermgr.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.huaxin.crm.customermgr.dao.CustomerDAO;
import com.huaxin.crm.customermgr.entity.Customer;
import com.huaxin.crm.customermgr.service.CustomerServiceIf;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerServiceIf {

    @Resource
    CustomerDAO dao;

    @Override
    public List<Customer> findAll() {
        Customer customerModel = dao.selectById(1);
        List<Customer> list = Arrays.asList(customerModel);
        return list;
    }

    @Override
    public IPage findByPage(Integer currentPage, Integer size) {
        IPage<Customer> customerIPage = dao.selectPage(new Page<Customer>(currentPage, size), null);
        Integer total = dao.selectCount(null);
        customerIPage.setTotal(total);

        return customerIPage;
    }

    @Override
    public boolean add(Customer customer) {
        int r = dao.insert(customer);
        return r == 1 ? true : false;
    }

    @Override
    public boolean delete(Integer uuid) {
        int r = dao.deleteById(uuid);
        return r == 1 ? true : false;
    }

    @Override
    public Customer findById(Integer uuid) {
        Customer customer = dao.selectById(uuid);
        return customer;
    }

    @Override
    public Customer findByCustomerId(String customerId) {
        QueryWrapper qw = new QueryWrapper<Customer>();
        qw.eq("customerId",customerId);
        Customer customer = dao.selectOne(qw);
        return customer;
    }


}
