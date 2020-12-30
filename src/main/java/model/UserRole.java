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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Setter
@Entity
@Table(name = "user_roles", schema = "myapp")
public class UserRole {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private int id;
    private int user_id;
    private int role_id;
    private Date created_at;
    private Date updated_at;
}
