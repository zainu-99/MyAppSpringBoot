/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository;

import java.util.List;
import model.User;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author as-sunnah
 */
public interface GroupLevelRoleDao {
    @Query("select * from user")
    public List<User> getAll();
    @Query("select t from User t where t.id = ?1")
    public User getById(int id);
    @Query("")
    public boolean store(User user);
    @Query("")
    public boolean edit (int id,User user);
    @Query("")
    public boolean delete (int id);
}
