package com.whut.service;

import java.util.List;

import com.whut.pojo.User;

public interface UserService {
	public List<User> findAll();
	
	public boolean vertify(User user);
	
	public boolean add(User user);
}
