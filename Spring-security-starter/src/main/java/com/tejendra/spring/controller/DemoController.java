/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tejendra.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author aman
 */
@Controller
public class DemoController {
    
    @GetMapping("/")
    public String showHome(){
        return "home";
    }
    
    
    @GetMapping("/leaders")
    public String showLeaders(){
        return "leader";
    }
    
    @GetMapping("/admins")
    public String showAdmins(){
        return "admin";
    }
    
    
}
