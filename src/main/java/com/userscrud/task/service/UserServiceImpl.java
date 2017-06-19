package com.userscrud.task.service;

import com.userscrud.task.dao.UserDAO;
import com.userscrud.task.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;


/**
 * Created by User on 018 18.06.17.
 */
@Service
public class UserServiceImpl implements UserService{

    private UserDAO userDao;

    @Autowired
    public void setUserDao(UserDAO userDao) {
        this.userDao = userDao;
    }


    @Transactional
    public void addUser(User user) {
        userDao.addUser(user);
    }


    @Transactional
    public void updateUser(User user) {
        userDao.updateUser(user);
    }


    @Transactional
    public void removeUser(int id) {
        userDao.removeUser(id);
    }


    @Transactional
    public User getUser(int id) {
        return userDao.getUser(id);
    }


    @Transactional
    public List<User> getUsers(Long page) {
        return userDao.getUsers(page);
    }


    @Transactional
    public List<User> getUsers(String name) {
        return userDao.getUsers(name);
    }

}
