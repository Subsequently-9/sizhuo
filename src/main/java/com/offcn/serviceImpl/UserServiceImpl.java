package com.offcn.serviceImpl;

import com.offcn.mapper.UserMapper;
import com.offcn.pojo.User;
import com.offcn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper  userMapper;


    @Override
    public int insertU(User user) {
        int i = userMapper.insertUser(user);
        return i;
    }

    @Override
    public List<User> findU() {
        List<User> users = userMapper.findUser();

        return users;
    }

    @Override
    public int delUser(int id) {
        int del = userMapper.del(id);
        return del;
    }

    @Override
    public int updateUser(User user) {
        int up = userMapper.up(user);
        return up;
    }
}
