<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users page</title>
    <style type="text/css">
        h1 {
            margin-top: 10px;
            margin-bottom: 0;
        }
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


        ul.paging {
            display: inline-block;
            margin:0 auto;
            padding: 0;
        }

        ul.paging li {
            display: inline;
            border: 1px solid #ddd;
            border-radius: 10%;
            color: black;
            background: #fafafa;
            float: left;
            font-size: 18px;
            padding: 8px 16px;
            text-decoration: none;
        }

        .but {
            background-color: #fafafa;
            border: 1px solid #ddd;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
            transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
            border-radius: 4px;
            color: #555555;
            display:block;
            width:120px;
            font-size: 14px;
            text-align:center;
            vertical-align: middle;
            height: 30px;
            line-height: 20px;
            text-decoration:none;
        }
    </style>
</head>
<body>

    <h1>Users List</h1>

    <c:if test="${!empty listUsers}">
        <table class="table_price">
            <tr class="param">
                <th>ID</th>
                <th>Name</th>
                <th>E-mail</th>
                <th>Age</th>
                <th>Admin</th>
                <th>Creation date</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${listUsers}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>
                    <td>${user.email}</td>
                    <td>${user.age}</td>
                    <td>${user.admin}</td>
                    <td>${user.createDate}</td>
                    <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a> </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <div style="align-content: center">
    <ul class="paging">
        <c:if test="${page > 1}">
            <li><a href="<c:url value="/users"/>">Back</a></li>
            <li><a href="<c:url value="/users"><c:param name="page" value="${page - 1}"/>${page - 1}</c:url>">Previous</a></li>
        </c:if>
        <li><spring:message text="${page}"/></li>
        <c:if test="${!empty listUsers}">
            <li><a href="<c:url value="/users"><c:param name="page" value="${page + 1}"/>${page + 1}</c:url>">Next</a></li>
        </c:if>
    </ul>
    </div>

    <br/>
    <br/>
    <c:url var="searchuser" value="/searchresults"/>
    <form:form action="${searchuser}" commandName="searcheduser">
        <table width="30%">
            <tr>
                <td><input class="but" type="submit" name="action" value="<spring:message text="Search"/>"/></td>
                <td><form:input path="name"/> <spring:message text="Name"/></td>


            </tr>
        </table>
    </form:form>

    <form>
        <a class="but" href="/adduser">Add User</a>
    </form>

    <br/>
    <br/>


</body>
</html>
