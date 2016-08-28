package com.test.service;

import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by milu on 27.08.16.
 */
@Transactional
public interface Service<T> {
    List<T> getAll() throws SQLException;

    T getById(Integer id) throws SQLException;

    T getByName(String name) throws SQLException;

    void delete(T o) throws SQLException;

    T insert(T o) throws SQLException;

    T update(T o) throws SQLException;
}
