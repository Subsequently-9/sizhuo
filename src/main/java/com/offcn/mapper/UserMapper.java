package com.offcn.mapper;

import com.offcn.pojo.User;

import java.util.List;

public interface UserMapper {

    int insertUser(User user);

    List<User> findUser();

    int del(int id);

    int up(User user);
}
