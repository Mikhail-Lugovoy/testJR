package com.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.util.Date;

/**
 * Created by milu on 27.08.16.
 */
@Entity(name = "users")
public class User extends BaseModel {

    @Column(name = "NAME")
    private String name;

    @Column(name = "AGE")
    private int age;

    @Column(name = "IS_ADMIN")
    private boolean isAdmin;

    @Column(name = "CREATED_DATE")
    private Date currentDate;

    public Date getCurrentDate() {
        return currentDate;
    }

    public void setCurrentDate(Date currentDate) {
        this.currentDate = currentDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }

    public static Builder newBuilder(){
        return new User().new Builder();
    }

    public class Builder{
        private Builder(){}

        public Builder setId(Integer id){
            User.this.setId(id);
            return this;
        }

        public Builder setName(String name){
            User.this.setName(name);
            return this;
        }

        public Builder setAge(int age){
            User.this.setAge(age);
            return this;
        }

        public Builder setAdmin(boolean isAdmin){
            User.this.setAdmin(isAdmin);
            return this;
        }

        public Builder setDate(Date date){
            User.this.setCurrentDate(date);
            return this;
        }

        public User build(){
            return User.this;
        }

    }
}
