/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.time.LocalDateTime;
import javax.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Setter
@Entity @Table(name = "users", schema = "myapp")
public class User {
    @Id
    private Long id;
    private String name;
    private String email;
    private String phone;
    private String address;
    private String gender;
    private String avatar;
    private String userid;
    private String password;
    private LocalDateTime created_at;
    private LocalDateTime updated_at;
}
