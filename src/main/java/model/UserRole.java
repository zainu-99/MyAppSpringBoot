/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.time.LocalDateTime;
import javax.persistence.Column;
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
    @Column(name = "AllowView")
    private boolean AllowView;
    @Column(name = "AllowCreate")
    private boolean AllowCreate;
    @Column(name = "AllowEdit")
    private boolean AllowEdit;
    @Column(name = "AllowDelete")
    private boolean AllowDelete;
    @Column(name = "AllowPrint")
    private boolean AllowPrint;
    @Column(name = "AllowCustom")
    private boolean AllowCustom;
}
