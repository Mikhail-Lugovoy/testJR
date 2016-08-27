package com.test.service.impl;

import com.test.dao.UserDao;
import com.test.model.User;
import com.test.service.UserService;
import org.springframework.stereotype.Service;

/**
 * Created by milu on 27.08.16.
 */
@Service
public class UserServiceImpl extends BaseService<User, UserDao> implements UserService {
}
