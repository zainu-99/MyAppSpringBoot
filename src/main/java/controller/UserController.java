/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import org.springframework.stereotype.Controller;
import repository.UserDao;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController extends BaseController {
    @Autowired
    private UserDao dao;

    @Override
    @RequestMapping(path = "/user")
    public ModelAndView index() {
        modelandview.addObject("fragment","user/view::page");
        return modelandview;
    }
    
}
