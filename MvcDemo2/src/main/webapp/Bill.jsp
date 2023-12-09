<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Receipt Details</title>
    <style>
        body {
            background-image: url(https://w0.peakpx.com/wallpaper/204/885/HD-wallpaper-custom-food-store-wood-pattern-coffee-3d-retro-mural-for-the-restaurant-cafe-hotel-background-wall-pvc-fabric-textile-wallcoverings-food-vintage.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
            font-family: Arial, sans-serif;
        }
        .receipt-table {
            width: 60%;
            margin: 50px auto;
            border-collapse: collapse;
        }
        .receipt-table th, .receipt-table td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
            border-color: white;
        }
      
    </style>
</head>
<body>
    <table class="receipt-table">
        <tr>
            <th>Detail</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Dish name</td>
            <td><%=request.getAttribute("name") %></td>
        </tr>
        <tr>
            <td>Dish qty</td>
            <td><%=request.getAttribute("qty") %></td>
        </tr>
        <tr>
            <td>Dish per Unit Price</td>
            <td><%=request.getAttribute("price") %></td>
        </tr>
        <tr>
            <td>Dish Type</td>
            <td><%=request.getAttribute("type") %></td>
        </tr>
        <tr>
            <td>Dish Amount</td>
            <td><%=request.getAttribute("amount") %></td>
        </tr>
        <tr>
            <td>Total Amount</td>
            <td><%=request.getAttribute("amount") %></td>
        </tr>
        <tr>
            <td>Discounted Amount</td>
            <td><%=request.getAttribute("discount") %></td>
        </tr>
        <tr>
            <td>Payable Amount</td>
            <td><%=request.getAttribute("payable") %></td>
        </tr>
    </table>

    <div class="thank-you">
        <p> THANK YOU VISIT AGAIN </p>
    </div>
</body>
</html>
