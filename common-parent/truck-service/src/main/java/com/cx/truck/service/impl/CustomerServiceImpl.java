package com.cx.truck.service.impl;

import com.cx.truck.model.Customer;
import com.cx.truck.model.CustomerExample;
import com.cx.truck.service.ICustomerService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl extends BaseServiceImpl<Customer> implements ICustomerService {
    @Override
    public void insert(Customer customer) {
        customerMapper.insertSelective(customer);
    }

    @Override
    public Integer insertSelective(Customer customer) {
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
         return customerMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(Customer customer) {
        customerMapper.updateByPrimaryKeySelective(customer);
    }

    @Override
    public Customer findById(Integer id) {
        return customerMapper.selectByPrimaryKey(id);
    }

    @Override
    public Boolean findByName(String name) {
        CustomerExample example = new CustomerExample();
        CustomerExample.Criteria criteria = example.createCriteria();
        criteria.andNameEqualTo(name);
        int count = customerMapper.countByExample(example);
        return count == 0;
    }

    @Override
    public List<Customer> fuzzyByName(String name) {
        CustomerExample example = new CustomerExample();
        CustomerExample.Criteria criteria = example.createCriteria();
        criteria.andNameLike(name);
        List<Customer> customers = customerMapper.selectByExample(example);
        return customers;
    }

    @Override
    public Customer findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<Customer> findAll() {
        CustomerExample example = new CustomerExample();
        example.setOrderByClause("id");
        return customerMapper.selectByExample(example);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        CustomerExample example = new CustomerExample();
        CustomerExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return customerMapper.deleteByExample(example);
    }
}
