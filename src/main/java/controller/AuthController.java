/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author as-sunnah
 */
@Controller
public class AuthController extends BaseController {
   @Override
    public ModelAndView index() {
        ModelAndView modelandview = new ModelAndView("login");
        return modelandview;
    }
    
}
