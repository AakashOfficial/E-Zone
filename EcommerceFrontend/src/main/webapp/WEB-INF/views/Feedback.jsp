<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
   <link href="pricing_table_hover_effect.css" rel="stylesheet">
        
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
         body{
	padding:0px;
	margin:10px;
    margin-left:150px;
	margin-right:150px;
    background:lightblue;	
}
*{
	text-align:left;
}
#feedback{
   	color:violet;
}

  /* Animation starts here */
/* #box{
	display:block;
	border:7px solid #1ec2e9;
	width:200px;
	height:50px;
	opacity:0.6;
	margin:10px auto;
	text-align:center;
	padding:5px;
	background:yellow;
	color:#1ab5c2;;
	-webkit-border-radius:15px;
	-webkit-transition:-webkit-transform 5s,opacity 5s,background 5s,width 5s,height 5s;
}
#box:hover{
	-webkit-transform:rotate(360deg);
	opacity:1;
	background:#1ec7e6;
	width:450px;
	height:40px;
} */
  /* Animation ends here */

.pricing-table {
    max-width: 368px;
    margin: 0 auto;
    transition: all .3s ease;
    -o-transition: all .3s ease;
    -moz-transition: all .3s ease;
    -webkit-transition: all .3s ease;
    border-radius: 0px;
}
.pricing-table:hover {
    box-shadow: 0px 0px 30px rgba(0,0,0, .2);
}
.pricing-table:hover>.panel-footer-landing {
    box-shadow: 0px 0px 30px rgba(0,0,0, .05) inset;
    -webkit-transition:  all .3s ease;
}
.pricing-table:hover>.panel>.panel-body-landing {
    background: #5CB85C;
    -webkit-transition:  all .3s ease;
}
.pricing-table:hover>.panel>.panel-heading-landing-box {
    background: #f0f0f0 !important;
    color: #333 !important;
    -webkit-transition:  all .3s ease;
}
.pricing-table:hover>.panel>.controle-header {
    background: #5CB85C !important;
    /*    border: solid 2px #5CB85C !important;*/
    -webkit-transition:  all .3s ease;
}
.pricing-table:hover>.panel>.panel-footer {
    background: #5CB85C !important;
    /*    border: solid 2px #5CB85C !important;*/
    -webkit-transition:  all .3s ease;
}
.pricing-table:hover>.panel>.panel-footer>.btn {
    border: solid 1px #fff !important;
    -webkit-transition:  all .3s ease;
}
.btn-price:hover {
    background: #fff !important;
    color: #5CB85C !important;
    -webkit-transition:  all .3s ease;
}
.pricing-table:hover>.panel>.controle-header>.panel-title-landing {
    color: #fff !important;
    -webkit-transition:  all .3s ease;
}
.pricing-table:hover>.panel>.panel-body-landing>.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    color: #fff !important;
    -webkit-transition:  all .3s ease;
}
.panel-heading-landing {
    background: #f7f7f7 !important; 
    padding: 20px !important; 
    border-top-left-radius: 10px !important;  
    border-top-right-radius: 10px !important; 
    border: solid 2px #5CB85C !important; 
    border-bottom: none !important;
}
.panel-heading-landing-box {
    background: #5CB85C !important; 
    color: #fff !important; 
    font-size: 16px !important; 
    padding: 3px !important; 
    border: solid 2px #5CB85C !important; 
    border-top: none !important;
}
.panel-title-landing {
    color: #626367 !important;
    font-size: 25px;
    font-weight: bold;
}
.panel-body-landing {
    border: solid 2px #ccc !important; 
    border-top: none !important; 
    border-bottom: none !important;
}
.panel-footer-landing {
    border: solid 2px #ccc !important; 
    border-bottom-left-radius: 10px !important; 
    border-bottom-right-radius: 10px !important; 
    border-top: none !important;
}
    </style>
</head>
<body>
 <%@include file="Header.jsp" %>
	
<div class="container">
        <div class="row text-center">
            <!-- <div class="col-md-12">
			  <div id="box">
               Feedback
              </div>
            </div> -->
            <div class="col-md-12" style="margin-top: 20px;">
                <div class="pricing-table">
                    <div class="panel panel-primary" style="border: none;">
                        <div class="controle-header panel-heading panel-heading-landing">
                            <h1 class="panel-title panel-title-landing">
                                Feedback Form
                            </h1>
                        </div>
                        <div class="controle-panel-heading panel-heading panel-heading-landing-box">
                            Your Feedback is Important to Us
                        </div>
                        <div class="panel-body panel-body-landing">
                        <form action="AfterFeedback">
                            <table class="table" colspan="2">
                                <tr>
                                    <td>Name</td>
									<td><input type="text" name="fname"/></td>
                                </tr>
                                <tr>
                                    <!-- <td width="50px"><i class="fa fa-check"></i></td> -->
                                    <td>Email</td>
									<td><input type="text" name="femail"/></td>
                                </tr>
                                <tr>
                                    <!-- <td width="50px"><i class="fa fa-check"></i></td> -->
                                    <td>Feedback</td>
									<td><input type="text" name="ffeedback"/></td>
                                </tr>
								<tr>
								    <td><input type="submit" name="fsubmit" value="Submit"/></td>
								</tr>
                            </table>
                          </form>
                        </div>
                        <div class="panel-footer panel-footer-landing">
                            <a href="Home" class="btn btn-price btn-success btn-lg">Home</a>
                        </div>
					</div>
                </div>
            </div>
        </div>
    </div>
  <br/><br/><br/><br/><br/><br/><br/><br/><br/>
   <%@include file="Footer.jsp" %>
</body>
</html>
