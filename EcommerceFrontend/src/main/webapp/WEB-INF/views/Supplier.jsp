<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <%@include file="HeaderAdmin.jsp" %>
</head>
<body>
    

      <!-- Fixed navbar -->
        <nav id="header" class="navbar navbar-fixed-top">
            <div id="header-container" class="container navbar-container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a id="brand" class="navbar-brand" href="#">My Ecommerce Project</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Home">Home</a></li>
                        <li><a href="Category">Add Category</a></li>
                        <li><a href="Supplier">Add Supplier</a></li>
                        <li><a href="Product">Product</a></li>
                        <li><a href="perform_logout">Logout</a></li>
                 
                        

                        
                    </ul>
                </div><!-- /.nav-collapse -->
            </div><!-- /.container -->
        </nav><!-- /.navbar -->

 <script type="text/javascript">
$(document).ready(function(){

/**
 * This object controls the nav bar. Implement the add and remove
 * action over the elements of the nav bar that we want to change.
 *
 * @type {{flagAdd: boolean, elements: string[], add: Function, remove: Function}}
 */
var myNavBar = {

    flagAdd: true,

    elements: [],

    init: function (elements) {
        this.elements = elements;
    },

    add : function() {
        if(this.flagAdd) {
            for(var i=0; i < this.elements.length; i++) {
                document.getElementById(this.elements[i]).className += " fixed-theme";
            }
            this.flagAdd = false;
        }
    },

    remove: function() {
        for(var i=0; i < this.elements.length; i++) {
            document.getElementById(this.elements[i]).className =
                    document.getElementById(this.elements[i]).className.replace( /(?:^|\s)fixed-theme(?!\S)/g , '' );
        }
        this.flagAdd = true;
    }

};

/**
 * Init the object. Pass the object the array of elements
 * that we want to change when the scroll goes down
 */
myNavBar.init(  [
    "header",
    "header-container",
    "brand"
]);

/**
 * Function that manage the direction
 * of the scroll
 */
function offSetManager(){

    var yOffset = 0;
    var currYOffSet = window.pageYOffset;

    if(yOffset < currYOffSet) {
        myNavBar.add();
    }
    else if(currYOffSet == yOffset){
        myNavBar.remove();
    }

}

/**
 * bind to the document scroll detection
 */
window.onscroll = function(e) {
    offSetManager();
}

/**
 * We have to do a first detectation of offset because the page
 * could be load with scroll down set.
 */
offSetManager();
});
</script>

<form:form action="InsertSupplier" modelAttribute="supplier">

<table align="center">
			<tr>
				<td colspan="2"><center><h3><b>Supplier Details</b></h3></center></td>
			</tr>
			<tr>
				<td><h4><b>Supplier ID</b></h4></td>
				<td><form:input path="suppid" /></td>
			</tr>
			<tr>
				<td><h4><b>Supplier Name</b></h4></td>
				<td><form:input path="suppname" /></td>
			</tr>
			
			
				<td><h4><b>Supplier Address</b></h4></td>
				<td><form:textarea path="suppaddress" /></td>
			</tr>
			
			<tr>
			<td colspan="2"><input type="submit" /></td>
			</tr>
</table>
</form:form>

<!-- Displaying the Supplier data using Table -->
<table cellspacing="2" align="center" border="5">

	<tr bgcolor="#ff66ff">
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Operations</td>
		
	</tr>
	<c:forEach items="${supplist}" var="supplier">
		<tr bgcolor="#00ff99">
			<td>${supplier.suppid}</td>
			<td>${supplier.suppname}</td>
			<td>${supplier.suppaddress}</td>
			<td><a href="<c:url value="deleteSupplier/${supplier.suppid}"/>">Delete</a>
				<a href="<c:url value="updateSupplier/${supplier.suppid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->
  <%@include file="Footer.jsp" %>
</body>
</html>

