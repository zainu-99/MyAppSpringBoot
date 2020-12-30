/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import repository.UserDao;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
    private UserDao dao;
    @GetMapping("/user")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("home");
        mav.addObject("message", dao.findAll());
        return mav;
    }
    @RequestMapping("/user/add")
    public ModelAndView store(User user){
       if(user != null) {
           ModelAndView mav = new ModelAndView("add");
           mav.addObject("model","model data");
           return mav;
       }
       else{
           return null;
       }
    }
    @RequestMapping("/user/edit")
    public ModelAndView edit(long id,User user){
        if(user != null){
            ModelAndView mav = new ModelAndView("edit");
            return mav;
        }else{
            return null;
        }
    }
    @RequestMapping("/user/delete")
    public ModelAndView delete(long id){
        return null;
    }
}
