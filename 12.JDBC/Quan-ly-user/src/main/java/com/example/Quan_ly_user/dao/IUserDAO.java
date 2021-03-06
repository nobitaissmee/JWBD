package com.example.Quan_ly_user.dao;


import com.example.Quan_ly_user.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id) throws SQLException;

    public List<User> selectAllUsers() throws SQLException;

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public List<User> selectUserByCountry(String country) throws SQLException;

    public User getUserById(int id) throws SQLException;

    public void insertUserStore(User user) throws SQLException;
}
