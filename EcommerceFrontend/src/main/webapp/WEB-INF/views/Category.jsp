<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
          <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>

html,
body {
    overflow-x: hidden; /* Prevent scroll on narrow devices */
}
body {
    padding-top: 100px;
}
footer {
    padding: 30px 0;
}

/*
 * Custom styles
 */
.navbar-brand {
    font-size: 24px;
}

.navbar-container {
    padding: 20px 0 20px 0;
}

.navbar.navbar-fixed-top.fixed-theme {
    background-color: #222;
    border-color: #080808;
    box-shadow: 0 0 5px rgba(0,0,0,.8);
}

.navbar-brand.fixed-theme {
    font-size: 18px;
}

.navbar-container.fixed-theme {
    padding: 0;
}

.navbar-brand.fixed-theme,
.navbar-container.fixed-theme,
.navbar.navbar-fixed-top.fixed-theme,
.navbar-brand,
.navbar-container{
    transition: 0.8s;
    -webkit-transition:  0.8s;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   
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








