package org.example.Controller;

import org.example.Model.User;
import org.example.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService service;

    @PostMapping("/createUser/{username}/{password}")
    public void createUser(@PathVariable String username , @PathVariable String password)
    {
        service.createUser(username, password);
    }

    @GetMapping("/getAllUser")
    public ArrayList<User> getAllUser(){
       return service.getAllUser();
    }




}
