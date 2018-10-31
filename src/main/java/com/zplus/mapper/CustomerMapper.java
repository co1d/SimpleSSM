package com.zplus.mapper;

import com.zplus.pojo.Customer;
import com.github.pagehelper.Page;

public interface CustomerMapper 
{

    void create(Customer customer);

    void delete(Long id);

    Customer findById(Long id);

    void update(Customer customer);

    Page<Customer> findByPage(Customer customer);
}
