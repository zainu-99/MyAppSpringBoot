/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import repository.RoleDao;

/**
 *
 * @author as-sunnah
 */
public class RoleController {
    @Autowired
    private RoleDao dao;
    @GetMapping("/role")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("home");
        return mav;
    }
    @RequestMapping("/role/add")
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
    @RequestMapping("/role/edit")
    public ModelAndView edit(long id,User user){
        if(user != null){
            ModelAndView mav = new ModelAndView("edit");
            return mav;
        }else{
            return null;
        }
    }
    @RequestMapping("/role/delete")
    public ModelAndView delete(long id){
        return null;
    }
}
