<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home Page</title>
</head>
<body>
 <%@include file="HeaderUser.jsp" %>
  <a href="Register">Add Or Register User</a><br/><br/>
  <a href="ProductPageT">View Products</a><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  <a href="perform_logout"><strong>Logout</strong></a><br/><hr/>
  <a href="checkout">Confirm Your Order</a><br/><hr/>
  <a href="Cart">Your Cart</a>
  
 <%@include file="Footer.jsp"%>
</body>
</html>