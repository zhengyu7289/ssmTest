package com.mhys.service;

import com.mhys.mapper.UserMapper;
import com.mhys.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;
    public List<User> findAll(){
        return userMapper.findAll();
    }
    public List<User> findByName(User user){
        return userMapper.findByName(user);
    }
    public int delById(int  id){
        return  userMapper.delByid(id);
    }
    public List<User> findByNames(User user){
        return userMapper.findByNames(user);
    }
    public int insertUser(User user){
        return userMapper.insertUser(user);
    }
    public User selectByID(User user){
        return userMapper.selectByID(user);
    }

    public int updateById(User user){
        return userMapper.updateById(user);
    }
}
