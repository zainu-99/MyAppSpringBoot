/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Setter
@Entity
@Table(name = "users", schema = "myapp")
public class User {
    @Id
    private int id;
    private String name;
    private String email;
    private String phone;
    private String address;
    private String gender;
    private String avatar;
    private String userid;
    private String password;
    private Date created_at;
    private Date updated_at;
}
