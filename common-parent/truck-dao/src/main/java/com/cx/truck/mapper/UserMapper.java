package com.cx.truck.mapper;

import com.cx.truck.mapper.base.BaseMapper;
import com.cx.truck.model.User;

public interface UserMapper extends BaseMapper<User> {

    /**
     * 根据用户名和密码查询用户
     * @param user
     * @return
     */
    public User findByUsernameAndPassword(User user);
}
