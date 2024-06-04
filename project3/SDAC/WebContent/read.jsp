<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Read Customer</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
    }

    .container {
        margin-top: 50px;
    }

    h2 {
        color: #007bff;
        margin-bottom: 30px;
    }

    input[type="text"] {
        width: calc(100% - 40px);
        padding: 8px;
        border: 1px solid #ced4da;
        border-radius: 4px;
        box-sizing: border-box;
        outline: none;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
        outline: none;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    table {
        width: 100%;
        margin-top: 30px;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border: 1px solid #dee2e6;
    }

    th {
        background-color: transparent;
        color: #000;
    }

    td {
        background-color: #fff;
    }
</style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Customer Information</h2>
        <form method="post" action="ReadController"> 
            <table>
                <tr>
                    <td><input type="text" name="CustomerID" placeholder="Customer ID"></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
        <table class="table table-bordered">
            <tr>
                <th>Customer ID</th>
                <td>${customer.customerID}</td>
                <th>Customer Name</th>
                <td>${customer.customerName}</td>
            </tr>
            <tr>
                <th>Total Life Time Value</th>
                <td>${customer.totalLifeTimeValue}</td>
                <th>Average Order Value</th>
                <td>${customer.averageOrderValue}</td>
            </tr>
            <tr>
                <th>Customer Segment Category</th>
                <td>${customer.customerSegmentCategory}</td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</body>
</html>
