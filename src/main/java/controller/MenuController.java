package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/books/menu")
public class MenuController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("add") != null){
            resp.sendRedirect("add.jsp");
        } else if (req.getParameter("show") != null){
            resp.sendRedirect("show.jsp");
        } else if (req.getParameter("delete") != null){
            resp.sendRedirect("delete.jsp");
        } else if (req.getParameter("update") != null){
            resp.sendRedirect("update.jsp");
        }
    }
}
