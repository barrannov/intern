package net.proselyte.usermanager.service;

import net.proselyte.usermanager.people.User;

import java.util.List;

public interface UserService {
 public  void addUser(User user);

 public  void updateUser(User user);

 public  void removeUser(int id);

 public  User getUserbyId(int id);

 public  List<User> listUsers();
}
