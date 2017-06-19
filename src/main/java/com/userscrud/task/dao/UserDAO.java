package com.userscrud.task.dao;

import com.userscrud.task.model.User;

import java.util.List;

/**
 * Created by User on 018 18.06.17.
 */
public interface UserDAO {
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUser(int id);
    List<User> getUsers(Long page);
    List<User> getUsers(String name);
}
