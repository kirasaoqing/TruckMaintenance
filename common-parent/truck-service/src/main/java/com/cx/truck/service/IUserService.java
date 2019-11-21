package com.cx.truck.service;

import com.cx.truck.model.User;
import com.cx.truck.service.base.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;

public interface IUserService extends IBaseService<User> {

    /**
     * 登录
     * @param user
     * @return
     */
    @Autowired
    public User login(User user);
}
