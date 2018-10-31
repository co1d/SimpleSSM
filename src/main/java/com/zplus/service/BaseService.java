package com.zplus.service;

import java.util.List;

//通用service接口
public interface BaseService<T> 
{
    
    List<T> findAll();

    T findById(Long id);

    void create(T t);

    void delete(Long id);

    void update(T t);
}