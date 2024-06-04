package com.example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.example.pojo.Customer;
import com.example.util.DBConnectionUtil;

public class InsertDao {
    public boolean insertCustomer(Customer customer) {
        String sql = "INSERT INTO customer (CustomerID, CustomerName, TotalLifeTimeValue, AverageOrderValue, CustomerSegmentCategory) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DBConnectionUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, customer.getCustomerID());
            ps.setString(2, customer.getCustomerName());
            ps.setString(3, customer.getTotalLifeTimeValue());
            ps.setString(4, customer.getAverageOrderValue());
            ps.setString(5, customer.getCustomerSegmentCategory());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
