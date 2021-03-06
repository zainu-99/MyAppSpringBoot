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
@Table(name = "roles", schema = "myapp")
public class Role {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private long id;;    
    private String  name;
    private String controller;
    private String url;
    private String remark;
    @Column(name = "HaveAccessView")
    private boolean HaveAccessView;
    @Column(name = "HaveAccessCreate")
    private boolean HaveAccessCreate;
    @Column(name = "HaveAccessEdit")
    private boolean HaveAccessEdit;
    @Column(name = "HaveAccessDelete")
    private boolean HaveAccessDelete;
    @Column(name = "HaveAccessPrint")
    private boolean HaveAccessPrint;
    @Column(name = "HaveAccessCustom")
    private boolean HaveAccessCustom;
}
