/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import model.User;

@Controller
public class UserController {
    @GetMapping("/user")
    public String index() {
        return "home";
    }
    @GetMapping("/user")
    public String store(User user) {
        return "add";
    }
    @GetMapping("/user")
    public String edit(int id,User user) {
        return "edit";
    }
    @GetMapping("/user")
    public String delete(int id) {
        return "delete";
    }
}
