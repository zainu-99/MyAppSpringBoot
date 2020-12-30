/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import model.User;
import model.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author as-sunnah
 */
@Repository
public interface UserDao extends CrudRepository<User, Long>{
    public List<User> findAll();
}
