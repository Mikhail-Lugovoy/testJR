package com.test.dao;

import com.test.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by milu on 27.08.16.
 */
public interface UserDao extends JpaRepository<User, Integer> {

    List<User> getByName(String name);
}
