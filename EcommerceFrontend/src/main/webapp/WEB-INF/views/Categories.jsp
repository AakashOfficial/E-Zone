<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Header.jsp" %>
<!-- Displaying the Category data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr bgcolor="cyan">
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
	</tr>
	<c:forEach items="${catdetail}" var="category">
		<tr bgcolor="orange">
			<td>${catinfo.catid}</td>
			<td>${catinfo.catname}</td>
			<td>${catinfo.catdesc}</td>
		</tr>
	</c:forEach>
</table>

<!-- Completed Displaying Table -->
<%@include file="Footer.jsp" %>
