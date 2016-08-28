package com.test.controller;

import com.test.dto.UserDto;
import com.test.model.User;
import com.test.service.UserService;
import com.test.util.JspPath;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by milu on 27.08.16.
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public ModelAndView showAll(@RequestParam(required = false)Integer page) throws SQLException {

        ModelAndView modelAndView = new ModelAndView(JspPath.USERS_ALL);

        int size;
        int usersInPage = 5;
        List<User> users;
        List<Integer> pages = new ArrayList<>();

        if (page == null || page == 1) {
            users = userService.getAll().subList(0, usersInPage);
        } else {
            int userInNextPage = (page-1)*usersInPage;

            if (userInNextPage + usersInPage <= userService.getAll().size()) {
                users = userService.getAll().subList(userInNextPage, userInNextPage + usersInPage);
            } else {
                users = userService.getAll().subList(userInNextPage, userService.getAll().size());
            }
        }
        if (userService.getAll().size()!= 0) {
            size = userService.getAll().size() / usersInPage + 1;
            for (int i = 1; i <= size; i++) {
                pages.add(i);
            }
        }

        modelAndView.addObject("users", users);
        modelAndView.addObject("pages", pages);

        return modelAndView;
    }

    @RequestMapping(value = "userSaveOrUpdate", method = RequestMethod.POST)
    public String addOne(@RequestParam(required = false)Integer id,
                         @ModelAttribute("dto")UserDto dto) throws SQLException {
        List<User> list = userService.getAll();//
        System.out.println(list.get(0).getCurrentDate().getClass());

        boolean b = Boolean.parseBoolean(dto.getIsAdmin());
        User user = User.newBuilder().setName(dto.getName()).setId(id).setAge(dto.getAge()).setAdmin(b).build();
        if(id == null){
            userService.insert(user);
        }
        else {
            userService.update(user);
        }
        return "redirect:/all";
    }

    @RequestMapping(value = "userDelete", method = RequestMethod.POST)
    public String deleteOne(@RequestParam(required = true) Integer id) throws SQLException {
        userService.delete(User.newBuilder().setId(id).build());
        return "redirect:/all";
    }

    @RequestMapping(value = "userEdit", method = RequestMethod.POST)
    public ModelAndView updateOne (@RequestParam(required = false)Integer id) throws SQLException {
        ModelAndView modelAndView = new ModelAndView(JspPath.USERS_EDIT);

        if (id != null){
            User user = userService.getById(id);
            UserDto dto = new UserDto();
            dto.setId(user.getId());
            dto.setName(user.getName());
            dto.setAge(user.getAge());
            dto.setIsAdmin(String.valueOf(user.isAdmin()));
            System.out.println(dto.getIsAdmin());
            modelAndView.addObject("dto", dto);
        }
        return modelAndView;
    }

    @RequestMapping(value = "findUser", method = RequestMethod.POST)
    public ModelAndView findByOne (@RequestParam (required = true) String name) throws SQLException {

        ModelAndView modelAndView = new ModelAndView(JspPath.USERS_USER);
        User user = userService.getByName(name);
        modelAndView.addObject("user", user);
        modelAndView.addObject("name", name);
        return modelAndView;

    }




}

