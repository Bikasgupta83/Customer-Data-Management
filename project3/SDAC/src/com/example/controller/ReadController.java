package com.example.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.ReadDao;
import com.example.pojo.Customer;

@WebServlet("/ReadController")
public class ReadController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cid = request.getParameter("CustomerID");

        ReadDao readDao = new ReadDao();
        Customer customer = readDao.getCustomerById(cid);

        if (customer != null) {
            request.setAttribute("customer", customer);
            RequestDispatcher dispatcher = request.getRequestDispatcher("read.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }
    }
}
