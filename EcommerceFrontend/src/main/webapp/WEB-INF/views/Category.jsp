<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <%@include file="HeaderAdmin.jsp" %>
</head>
<body>

<!-- Category Form Started -->
<div>
<c:if test="${flag}">
	<form action="UpdateCategory" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddCategory" method="post">
</c:if>

	<table align="center" cellspacing="2" style="border:4px solid black;margin:10px;padding:10px;">
		<tr>
			<td colspan="2">Category Details</td>
			<c:if test="${flag}">
			<input type="hidden" name="catid" value="${category.catid}"/>
			</c:if>
		</tr>
		<tr>
			<td>Category Name</td>
			<c:if test="${flag}">
				<td><input type="text" name="catname" value="${category.catname}" /></td>
			</c:if>
			<c:if test="${!flag}">
				<td><input type="text" name="catname" /></td>
			</c:if>
		</tr>
		<tr>
			<td>Category Description</td>
			<c:if test="${flag}">
				<td><input type="text" name="catdesc" value="${category.catdesc}" /></td>
			</c:if>
			<c:if test="${!flag}">
			<td><input type="text" name="catdesc" /></td>
			</c:if>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="AddCategory" /></td>
		</tr>
	</table>
</form>
<!-- Category Form Completed -->

<!-- Displaying the Category data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr bgcolor="cyan">
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${catdetail}" var="category">
		<tr bgcolor="orange">
			<td>${category.catid}</td>
			<td>${category.catname}</td>
			<td>${category.catdesc}</td>
			<td><a href="<c:url value="deleteCategory/${category.catid}"/>">Delete</a>
				<a href="<c:url value="updateCategory/${category.catid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->
 <%@include file="Footer.jsp" %>
</body>
</html>