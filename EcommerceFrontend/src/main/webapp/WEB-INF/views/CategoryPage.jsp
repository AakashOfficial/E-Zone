<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>
<%@include file="HeaderUser.jsp"%>
  
<div id="container">

<c:forEach items="${catdetail}" var="category">
<div class="row">
<div class="col-sm-6 col-md-3">
<div class="caption">
<h4><a href="ProductDescribe/${category.catid}" >${category.catname}</a></h4>

<p>${category.catdesc}</p>

</div>
</div>
</div>
</c:forEach>
</div>

<%@include file="Footer.jsp"%>
</body>
</html>
