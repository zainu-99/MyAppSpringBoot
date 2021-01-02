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
@Table(name = "grouplevel_roles", schema = "myapp")
public class GroupLevelRole {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private long id;
    private long grouplevel_id;
    private long role_id;
    @Column(name = "EnableView")
    private boolean EnableView;
    @Column(name = "EnableCreate")
    private boolean EnableCreate;
    @Column(name = "EnableEdit")
    private boolean EnableEdit;
    @Column(name = "EnableDelete")
    private boolean EnableDelete;
    @Column(name = "EnablePrint")
    private boolean EnablePrint;
    @Column(name = "EnableCustom")
    private boolean EnableCustom;
}
