package com.test.service.impl;

import com.test.dao.UserDao;
import com.test.model.User;
import com.test.service.UserService;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by milu on 27.08.16.
 */
@Service
public class UserServiceImpl extends BaseService<User, UserDao> implements UserService {
    @Override
    public List<User> getByName(String name) throws SQLException {
        return dao.getByName(name);
    }
}
