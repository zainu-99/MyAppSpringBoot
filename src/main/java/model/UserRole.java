/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.time.LocalDateTime;
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
    private long id;
    private long user_id;
    private long role_id;
    private LocalDateTime created_at;
    private LocalDateTime updated_at;
}
