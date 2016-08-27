package com.test.service.impl;

import com.test.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by milu on 27.08.16.
 */
public abstract class BaseService <T , P extends JpaRepository<T,Integer>> implements Service<T> {

    protected  P dao;

    @Autowired
    public void setPersistence(P dao){
        this.dao = dao;
    }

    public List<T> getAll() throws SQLException {
        return dao.findAll();
    }

    public T getById(Integer id) throws SQLException {
        return dao.findOne(id);
    }

    public void delete(T o) throws SQLException {
        dao.delete(o);
    }

    public T insert(T o) throws SQLException {
        return dao.save(o);
    }

    public T update(T o) throws SQLException {
        return dao.save(o);
    }
}
