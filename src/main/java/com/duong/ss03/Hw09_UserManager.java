package com.duong.ss03;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Hw09_UserManager", value = "/user-servlet")
public class Hw09_UserManager extends HttpServlet {
    List<User> users = new ArrayList<>();
    int countId = 1;
    @Override
    public void init(){
        //init
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<User> userList = (List<User>) getServletContext().getAttribute("users");
        if (userList == null) {
            userList = new ArrayList<>();
        }
        req.getServletContext().setAttribute("users",userList);
        req.getRequestDispatcher("hw09/listUser.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action.equals("register")){
            String name = req.getParameter("username");
            String email = req.getParameter("email");
            int id = countId++;

            users.add(new User(id,name,email));
            req.getServletContext().setAttribute("users",users);
            req.getRequestDispatcher("hw09/listUser.jsp").forward(req,resp);
        }

        if(action.equals("remove")){
            int id = Integer.parseInt(req.getParameter("userId"));
            users.removeIf(u -> u.getId() == id);
            req.getServletContext().setAttribute("users",users);
            req.getRequestDispatcher("hw09/listUser.jsp").forward(req,resp);
        }

    }

    @Override
    public void destroy() {
        super.destroy();
    }

}
