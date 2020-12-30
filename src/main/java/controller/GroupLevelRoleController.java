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
import repository.GroupLevelRoleDao;

/**
 *
 * @author as-sunnah
 */
public class GroupLevelRoleController {
    @Autowired
    private GroupLevelRoleDao dao;
    @GetMapping("/grouplevelrole")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("home");
        return mav;
    }
    @RequestMapping("/grouplevelrole/add")
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
    @RequestMapping("/grouplevelrole/edit")
    public ModelAndView edit(long id,User user){
        if(user != null){
            ModelAndView mav = new ModelAndView("edit");
            return mav;
        }else{
            return null;
        }
    }
    @RequestMapping("/grouplevelrole/delete")
    public ModelAndView delete(long id){
        return null;
    }
}
