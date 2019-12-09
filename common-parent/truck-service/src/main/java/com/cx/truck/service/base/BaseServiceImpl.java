package com.cx.truck.service.base;

import com.cx.truck.mapper.CustomerMapper;
import com.cx.truck.mapper.UserMapper;
import com.cx.truck.mapper.base.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class BaseServiceImpl<T> implements IBaseService<T> {

    /**
     * 统一管理mapper:UserMapper
     */
    @Autowired
    protected UserMapper userMapper;

    /**
     * 统一管理mapper:CustomerMapper
     */
    @Autowired
    protected CustomerMapper customerMapper;
}
