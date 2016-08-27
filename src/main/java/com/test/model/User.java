package com.test.model;

import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import javax.persistence.Entity;

/**
 * Created by milu on 27.08.16.
 */
@Entity(name = "users")
public class User extends BaseModel {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

        public User buid(){
            return User.this;
        }

    }
}
