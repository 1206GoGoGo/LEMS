package com.whut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.tools.corba.se.idl.constExpr.And;
import com.whut.dao.UserDao;
import com.whut.pojo.User;
import com.whut.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public List<User> findAll() {
		
		return userDao.findAll();
	}

	@Override
	public boolean vertify(User user) {
		//存储的密码
		User userTemp = userDao.findByUsername(user.getUsername());
		//比对密码和权限
		if(((user.getPassword()).equals(userTemp.getPassword()))&& (user.getLevel().equals(userTemp.getLevel()))) 
			return true;
		else
			return false;
	}

	@Override
	public boolean add(User user) {
		User userTemp = userDao.findByUsername(user.getUsername());
		if(userTemp != null) { //存在该用户
			return false;
		}
		
		userDao.add(user);
		return true;
		
	}

}
