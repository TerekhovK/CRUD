<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>User Data</title>

    <style type="text/css">
        .table_price {
            border-collapse: collapse;
            border-left: 3px solid #F79361;
            border-right: 3px solid #F79361;
            border-bottom: 3px solid #F79361;
            font-family: "Lucida Grande", sans-serif;
        }
        .table_price caption {
            background: #F79361;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            padding: 10px;
            box-shadow: 0 2px  4px 0 rgba(0,0,0,.3);
            color: white;
            font-family: "Roboto Slab",serif;
            font-style: normal;
            font-size: 26px;
            text-align: center;
            margin: 0;
        }
        .table_price td, .table_price th {
            padding: 10px;
        }
        .table_price th {
            text-align: left;
            font-size: 18px;
        }
        .table_price tr:nth-child(2n) {
            background: #E5E5E5;
        }
        .table_price td:last-of-type {
            text-align: center;
        }
        .table_price a {
            display: inline-block;
            padding: 5px 10px;
            background: #F79361;
            box-shadow: 2px 2px 0 0 #a22800;
            position: relative;
        }
        .table_price a:hover {
            box-shadow: none;
            top: 2px;
            left: 2px;
        }
        h1 {
            margin-top: 10px;
            margin-bottom: 0;

        }
    </style>

</head>
<body>
<a href="<c:url value="/users"/>">Back to users list</a>
<br/>
<br/>
<h1>User Details</h1>

<table class="table_price">
    <tr class="param">
        <th>ID</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Age</th>
        <th>Admin</th>
        <th>Creation date</th>
    </tr>
    <tr class="value">
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.email}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createDate}</td>
    </tr>
</table>
</body>
</html>