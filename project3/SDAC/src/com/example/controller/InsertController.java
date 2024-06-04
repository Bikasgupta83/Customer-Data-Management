package com.example.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.InsertDao;
import com.example.pojo.Customer;
@WebServlet("/InsertController")
public class InsertController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cid = request.getParameter("CustomerID");
        String cname = request.getParameter("CustomerName");
        String tvalue = request.getParameter("TotalLifeTimeValue");
        String ovalue = request.getParameter("AverageOrderValue");
        String sc = request.getParameter("CustomerSegmentCategory");

        Customer customer = new Customer();
        customer.setCustomerID(cid);
        customer.setCustomerName(cname);
        customer.setTotalLifeTimeValue(tvalue);
        customer.setAverageOrderValue(ovalue);
        customer.setCustomerSegmentCategory(sc);

        InsertDao insertDao = new InsertDao();
        boolean isInserted = insertDao.insertCustomer(customer);

        RequestDispatcher dispatcher = isInserted ? request.getRequestDispatcher("success.jsp")
                : request.getRequestDispatcher("error.jsp");
        dispatcher.forward(request, response);
    }
}
