<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="HeaderUser.jsp"%>
<html>
<body>
<div id="container">

<c:forEach items="${prodlist}" var="product">
<div class="row">
<div class="col-sm-6 col-md-3">
<a href="ProductDescribe/${product.prodid}" class="thumbnail">
<img src="${pageContext.request.contextPath}/resources/${product.prodid}.jpg" alt="Generic placeholder thumbnail"/>
</a>

<div class="caption">
<h4>${product.prodname}</h4>

<p>${product.price}</p>
<p>${product.pimage}</p>
</div>
</div>
</div>
</c:forEach>
</div>

<%@include file="Footer.jsp"%>
</body>
</html>


