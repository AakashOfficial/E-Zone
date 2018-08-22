<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us Page</title>
  <style>
      .jumbotron {
background: #358CCE;
color: #FFF;
border-radius: 0px;
}
.jumbotron-sm { padding-top: 24px;
padding-bottom: 24px; }
.jumbotron small {
color: #FFF;
}
.h1 small {
font-size: 24px;
}
  </style> 
</head>
<body>
<%@include file="Header.jsp" %>

    <div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1" style="padding-left:160px">
                    About us</h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <form style="text-align:center;padding-left:160px">
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Tyagi, Inc.</strong><br>
                795 Anand Vihar, District - Hapur<br>
                Uttar Pradesh, India 245101<r><br/>
                <abbr title="Phone">
                    P:</abbr>
                (+91) 9711216829 , 8744872986
            </address>
            <address>
                <strong>Aakash Tyagi</strong><br>
                <a>19aakash33@gmail.com</a>
            </address>
            </form>
        </div>
    </div>
</div>
    
   
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@include file="Footer.jsp" %>
</body>
</html>
