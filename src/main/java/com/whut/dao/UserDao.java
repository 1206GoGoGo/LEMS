package com.whut.dao;

import java.util.List;

import com.whut.pojo.User;

public interface UserDao {
	 public User findByUsername(String username);
	 
	 public List<User> findAll();
	 
	 public void add(User user);
}
