/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
    private UserDao dao;
    @GetMapping("/user")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("home");
        mav.addObject("message", "Jaenudin");
        return mav;
    }
}
