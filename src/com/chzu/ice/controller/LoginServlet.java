package com.chzu.ice.controller;

import com.chzu.ice.service.AuthService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private String contextPath;

    @Override
    public void init() {
        contextPath = getServletContext().getContextPath();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (login(username, password)) {
            System.out.println("登录成功");
            resp.sendRedirect(contextPath.concat("/queryStu.jsp"));
        } else {
            System.out.println("密码错误或用户名不存在");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

    private boolean login(String username, String password) {
        return AuthService.login(username, password);
    }
}
