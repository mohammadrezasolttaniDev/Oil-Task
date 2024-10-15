package org.example.Service;

import org.example.Model.User;
import org.example.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
@Transactional
public class UserService {
    @Autowired
    private UserRepository repository;
    public void createUser(String username , String password){
        User user = new User();
        user.setPassword(password);
        user.setUsername(username);
        repository.save(user);
    }

    public ArrayList<User> getAllUser(){
       return (ArrayList<User>) repository.findAll();
    }

}
