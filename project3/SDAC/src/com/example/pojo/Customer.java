package com.example.pojo;

public class Customer {
    private String customerID;
    private String customerName;
    private String totalLifeTimeValue;
    private String averageOrderValue;
    private String customerSegmentCategory;

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getTotalLifeTimeValue() {
        return totalLifeTimeValue;
    }

    public void setTotalLifeTimeValue(String totalLifeTimeValue) {
        this.totalLifeTimeValue = totalLifeTimeValue;
    }

    public String getAverageOrderValue() {
        return averageOrderValue;
    }

    public void setAverageOrderValue(String averageOrderValue) {
        this.averageOrderValue = averageOrderValue;
    }

    public String getCustomerSegmentCategory() {
        return customerSegmentCategory;
    }

    public void setCustomerSegmentCategory(String customerSegmentCategory) {
        this.customerSegmentCategory = customerSegmentCategory;
    }
}
