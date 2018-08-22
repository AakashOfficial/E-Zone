<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="Header.jsp"%>
<table width="60%" align="center" border="1">
<tr bgcolor="skyblue">
<td colsop="3"><center>Product Description</center></td>
</tr>
<tr>
<td rowspan="6"><img src="<c:url value="/resources/${prodinfo.prodid}.jpg"/>"/></td>
</tr>
<tr>
<td>Product ID</td><td>${prodinfo.prodid}</td>
</tr>
<tr>
<td>Product Name</td><td>${prodinfo.prodname}</td>
</tr>
<tr>
<td>Supplier</td><td>${prodinfo.suppid}</td>
</tr>
<tr>
<td>Product Desc</td><td>${prodinfo.proddesc}</td>
</tr>
<tr>
<td>Price</td><td>${prodinfo.price}</td>
</tr>
<tr>
<td> </td>
<td>
</tr>
</table>
<%@include file="Footer.jsp"%>
