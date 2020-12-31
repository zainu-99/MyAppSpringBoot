/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

/**
 *
 * @author as-sunnah
 */
@Controller
public class AuthController {
    public String login(Model model){
        return "login";
    }
    public String Logout(Model model){
        return "logout";
    }
    
}
