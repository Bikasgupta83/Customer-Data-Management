<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Customer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        center {
            margin-top: 50px;
        }

        h2 {
            color: #007bff;
            margin-bottom: 30px;
        }

        table {
            border-collapse: collapse;
            width: 400px;
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            margin: auto;
        }

        table td {
            padding: 10px;
            border-bottom: 1px solid #dee2e6;
        }

        table tr:last-child td {
            border-bottom: none;
        }

        input[type="text"] {
            width: calc(100% - 20px);
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
            background-color: #dc3545;
            color: #fff;
            cursor: pointer;
            outline: none;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <center>
        <h2>Delete Customer</h2>
        <form method="post" action="DeleteController">
            <table>
                <tr>
                    <td>Customer ID</td>
                    <td><input type="text" name="CustomerID" required></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <input type="submit" value="Delete">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
