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
public class GroupLevelRoleController extends BaseController {
    @Autowired
    private GroupLevelRoleDao dao;
}
