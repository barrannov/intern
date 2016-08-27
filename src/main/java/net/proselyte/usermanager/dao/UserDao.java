package net.proselyte.usermanager.dao;

import net.proselyte.usermanager.people.User;

import java.util.List;

public interface UserDao {
     void addUser(User user);

    void updateUser(User user);

    void removeUser(int id);

    User getUserById(int id);

    List<User> listUsers();


    public List<User> getUserByName(String name);




}
