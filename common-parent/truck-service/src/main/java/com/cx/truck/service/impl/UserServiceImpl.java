package com.cx.truck.service.impl;

import com.cx.truck.model.User;
import com.cx.truck.service.IUserService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl extends BaseServiceImpl<User> implements IUserService {

    @Override
    public User login(User user) {
        User loginUser = userMapper.findByUsernameAndPassword(user);
        return loginUser;
    }

    @Override
    public void insert(User user) {

    }

    @Override
    public void deleteById(Integer id) {

    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(User user) {

    }

    @Override
    public User findById(Integer id) {
        System.out.println(id);
        User user = userMapper.findById(id);
        return user;
    }

    @Override
    public User findByUUID(String uuid) {
        return null;
    }
}
