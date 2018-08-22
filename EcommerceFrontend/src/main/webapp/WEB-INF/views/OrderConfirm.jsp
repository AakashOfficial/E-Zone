<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="Header.jsp"%>
<form action="ordercomplete" method="get">
<table cellspacing="3" align="center">
<tr>
<td colspan="5"><center><h3>Shopping Cart</h3></center></td>
</tr>
<tr bgcolor="pink">
<tr><td>Product ID</td></tr>
<tr><td>Quantity</td></tr>
<tr><td>Image</td></tr>
<tr><td>SubTotal</td></tr>
</tr>

<c:forEach items="${cartitems}" var="cartitem">
<tr>
<td>${cartitem.prodname}</td>
 <td>${cartitem.quantity}</td>
 <td><img src="/resources/images/${cartitem.prodid }.jpg" width="100" height="100"/></td>
 <td>${cartitem.price * cartitem.quantity}</td> 
</tr>

</c:forEach>
<tr>
<td colspan="3"> Grand Total</td>
<td>${grandtotal}</td> 
</tr>
<tr>
    <td><input type="label" value="Enter Card No"/></td>
    <td><input type="text"/></td>
</tr><br/>
<tr>
    <td><input type="Submit" value="Submit" action="OrderComplete"/></td>
</tr>
</table>
</form>
<%@include file="Footer.jsp" %>
</body>
</html>
