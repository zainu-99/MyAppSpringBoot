/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author zainu
 */
public abstract class BaseController {
    public static String baseLayout="_layout";
    public ModelAndView modelandview = 
            new ModelAndView(baseLayout).addObject("fragment", "jome::page");
    public ModelAndView index(){
        return modelandview;
    }
    public String create(Model model){
        return baseLayout;
    }
    public String edit(Model model){
        return baseLayout;
    }
    public String delete(Model model){
        return baseLayout;
    }
    public String print(Model model){
        return baseLayout;
    }
    public String custom(Model model){
        return baseLayout;
    }
}
