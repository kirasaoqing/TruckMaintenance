package com.cx.truck.service;

import com.cx.truck.model.User;
import com.cx.truck.service.base.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;

public interface IUserService extends IBaseService<User> {

    /**
     * 特有方法：登录
     * @param username
     * @param password
     * @return
     */
    @Autowired
    public User login(String username, String password);
}
