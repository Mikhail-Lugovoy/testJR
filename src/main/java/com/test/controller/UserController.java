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

import java.security.Timestamp;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/**
 * Created by milu on 27.08.16.
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public ModelAndView showAll() throws SQLException {
//        Timestamp timestamp = userService.getAll().get(1).getDate();
//        System.out.println(userService.getAll().get(1).getDate().getClass());
//        String s = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(userService.getAll().get(1).getDate().getClass());
//        System.out.println(s);

        return new ModelAndView(JspPath.USERS_ALL, "users", userService.getAll());
    }

    @RequestMapping(value = "userSaveOrUpdate", method = RequestMethod.POST)
    public String addOne(@RequestParam(required = false)Integer id,
                         @ModelAttribute("dto")UserDto dto) throws SQLException {

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

//    @RequestMapping(value = "userSaveOrUpdate", method = RequestMethod.POST)
//    public String addOne(@RequestParam(required = false)Integer id,
//                         @RequestParam(required = true) String name,
//                         @RequestParam(required = true) Integer age,
//                         @RequestParam (required = false) String isAdmin) throws SQLException {
//        System.out.println(id + " " + name + " " + age+ " " + isAdmin);
//        boolean b = Boolean.parseBoolean(isAdmin);
//        User user = User.newBuilder().setName(name).setId(id).setAge(age).setAdmin(b).build();
//        if(id == null){
//            userService.insert(user);
//        }
//        else {
//            userService.update(user);
//        }
//        return "redirect:/all";
//    }

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
//    @RequestMapping(value = "userEdit", method = RequestMethod.POST)
//    public ModelAndView updateOne (@RequestParam(required = false)Integer id) throws SQLException {
//        ModelAndView modelAndView = new ModelAndView(JspPath.USERS_EDIT);
//        if (id != null){
//            User user = userService.getById(id);
//            modelAndView.addObject("user", user);
//        }
//        return modelAndView;
//    }


}

