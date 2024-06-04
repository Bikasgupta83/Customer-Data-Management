package com.example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.example.pojo.Customer;
import com.example.util.DBConnectionUtil;

public class UpdateDao {
    public boolean updateCustomer(Customer customer) {
        String sql = "UPDATE customer SET CustomerName = ?, TotalLifeTimeValue = ?, AverageOrderValue = ?, CustomerSegmentCategory = ? WHERE CustomerID = ?";
        try (Connection conn = DBConnectionUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, customer.getCustomerName());
            ps.setString(2, customer.getTotalLifeTimeValue());
            ps.setString(3, customer.getAverageOrderValue());
            ps.setString(4, customer.getCustomerSegmentCategory());
            ps.setString(5, customer.getCustomerID());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
