package com.maijijun.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/luffysayhello")
public class luffysayhello  extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String word = "Hello,麦基俊,成为我的伙伴吧！！！";
        req.setAttribute("message",word);
        req.getRequestDispatcher("/jsp/luffysayhello.jsp").forward(req,resp);
       // resp.getWriter().write("hello,麦基俊,我们一起来学习JAVA吧！！！");
    }
}
