package com.zplus.service.impl;

import com.zplus.mapper.UserMapper;
import com.zplus.pojo.User;
import com.zplus.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    //注入
    @Autowired
    private UserMapper userMapper;
    
    //用户登录的方法
    public User login(String username) 
    {
        return userMapper.login(username);
    }

    public List<User> findAll()
    {
        return null;
    }

    public User findById(Long id)
    {
        return null;
    }

    public void create(User user)
    {

    }

    public void delete(Long id) 
    {

    }

    public void update(User user) 
    {

    }
}
