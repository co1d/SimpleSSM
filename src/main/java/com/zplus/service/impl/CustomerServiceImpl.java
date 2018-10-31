package com.zplus.service.impl;

import com.zplus.mapper.CustomerMapper;
import com.zplus.pojo.Customer;
import com.zplus.pojo.PageBean;
import com.zplus.service.CustomerService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService 
{

    //注入
    @Autowired
    private CustomerMapper customerMapper;

    public void create(Customer customer)
    {
        customerMapper.create(customer);
    }

    public void delete(Long id)
    {
        customerMapper.delete(id);
    }

    public List<Customer> findAll()
    {
        return null;
    }

    public Customer findById(Long id)
    {
        return customerMapper.findById(id);
    }

    public void update(Customer customer)
    {
        customerMapper.update(customer);
    }

    /**
     * 分页查询
     *
     * @param customer 查询条件
     * @param pageCode 当前页
     * @param pageSize 每页的记录数
     * @return
     */
    public PageBean findByPage(Customer customer, int pageCode, int pageSize) 
    {
        //使用Mybatis分页插件
        PageHelper.startPage(pageCode, pageSize);

        //调用分页查询方法，其实就是查询所有数据，mybatis自动帮我们进行分页计算
        Page<Customer> page = customerMapper.findByPage(customer);

        return new PageBean(pageCode, (int)Math.ceil((page.getTotal() / (double)pageSize)),
                (int)page.getTotal(), pageSize, page.getResult());
    }
}
