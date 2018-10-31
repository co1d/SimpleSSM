package com.zplus.service;

import com.zplus.pojo.User;

public interface UserService extends BaseService<User> 
{
    User login(String username);
}
