package com.test.dao;

import com.test.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by milu on 27.08.16.
 */
public interface UserDao extends JpaRepository<User, Integer> {

    User getByName(String name);
}
