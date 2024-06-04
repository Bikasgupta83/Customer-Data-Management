package com.example.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.DeleteDao;
@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cid = request.getParameter("CustomerID");

        DeleteDao deleteDao = new DeleteDao();
        boolean isDeleted = deleteDao.deleteCustomer(cid);

        RequestDispatcher dispatcher = isDeleted ? request.getRequestDispatcher("success.jsp")
                : request.getRequestDispatcher("error.jsp");
        dispatcher.forward(request, response);
    }
}
