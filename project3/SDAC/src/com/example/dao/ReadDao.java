package com.example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.example.pojo.Customer;
import com.example.util.DBConnectionUtil;

public class ReadDao {
    public Customer getCustomerById(String customerId) {
        String sql = "SELECT * FROM customer WHERE CustomerID = ?";
        try (Connection conn = DBConnectionUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, customerId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerID(rs.getString("CustomerID"));
                customer.setCustomerName(rs.getString("CustomerName"));
                customer.setTotalLifeTimeValue(rs.getString("TotalLifeTimeValue"));
                customer.setAverageOrderValue(rs.getString("AverageOrderValue"));
                customer.setCustomerSegmentCategory(rs.getString("CustomerSegmentCategory"));
                return customer;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
