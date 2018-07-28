package com.offcn.service;
import com.offcn.pojo.User;

import java.util.List;

public interface UserService {

    int insertU(User user);

    List<User> findU();

    int delUser(int id);

    int updateUser(User user);
}
