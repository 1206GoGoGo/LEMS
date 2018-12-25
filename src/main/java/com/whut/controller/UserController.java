package com.whut.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.whut.pojo.User;
import com.whut.service.UserService;

/**
 * 用户控制器
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
   
    @Autowired
    private UserService userService;
    
    
    @RequestMapping(value = "/findAll", method = RequestMethod.GET)
    public @ResponseBody List<User> findAll() {
    	return userService.findAll();
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody String login(@RequestBody User user) {
   
        if(userService.vertify(user))
        	return "success";
        else
        	return "failure"; 
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public @ResponseBody String register(@RequestBody User user) {
   
        if(userService.add(user))
        	return "success";
        else
        	return "failure"; 
    }
}



