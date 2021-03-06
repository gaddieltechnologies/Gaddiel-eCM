<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- saved from url=(0057)http://wbpreview.com/previews/WB01BG165/user-account.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
    <title>Clinical Laboratory - Admin Dashboard</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <!-- CSS files -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/alveolae.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/footable.core.css?v=2-0-1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/footable-demos.css">
    <!-- Google font -->
    <link href="/css/css.css" rel="stylesheet" type="text/css">
     <script src="${pageContext.request.contextPath}/resources/js/jquery.1.9.1.min.js" type="text/javascript"></script>
      <script>
        if (!window.jQuery) { document.write('<script src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"><\/script>'); }
    </script>
     <script src="${pageContext.request.contextPath}/resources/js/footable.js?v=2-0-1"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.js"></script>

	<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->	
</head>
<form:form commandName="patientManager" action="" id="patientManagerId">
<body>
	<!-- Navbar -->
<style>
.oddtr
{
background-color:#FFFFFF;
}
.eventr
{
	background-color:#F5F5F5;
}
.trover
{
background-color: #0099CC;
}
.trclick
{
	background-color: #7EC2EB;
}
	
</style>

	<!-- /Navbar -->
	
	<!-- Main content -->
	<div id="main-content">
		<!-- Container -->
		<div class="container">
			<!-- Header boxes -->
			<div class="box-container">
				
			</div>
			<!-- /Header boxes -->
			<!-- row boxes -->
			<div class="row">
			   <div class="span12 desktop">
				 <div class="widget">                 					
					<div class="widget-content "> 
						<div class="span8"><h3>Patient Manager</h3></div>                       
						<div class="span3">                                                                
							<div class="box-holder">
							 <a href="#" onClick="newPage()"><div class="box"><img src="${pageContext.request.contextPath}/resources/images/e-add.png"/>New</div></a> 
							</div>  
							<div class="box-holder">
							   <a style="cursor:pointer;" id="viewid" class="viewid">
							   <div class="box"><img src="${pageContext.request.contextPath}/resources/images/e-view.png"/>View</div></a>
                               <a style="cursor:pointer;" id="viewdisable" class="viewdisable">
							   <div class="box"><img src="${pageContext.request.contextPath}/resources/images/d-view.png"/>View</div></a>
							</div>  
							 <div class="box-holder">
							   <a href="#" id="editenable" class="editenable">
							   <div class="box"><img src="${pageContext.request.contextPath}/resources/images/e-edit.png"/>Edit</div></a>
                               <a href="#" id="editdisable" class="editdisable">
							    <div class="box"><img src="${pageContext.request.contextPath}/resources/images/d-edit.png"/>Edit</div></a>
							</div>  
							 <div class="box-holder">
							   <a href="#" id="deletenable" class="deletenable">
							   <div class="box"><img src="${pageContext.request.contextPath}/resources/images/e-trash.png"/>Delete</div></a>
                               <a href="#" id="deletedisable" class="deletedisable">
							   <div class="box"><img src="${pageContext.request.contextPath}/resources/images/d-trash.png"/>Delete</div></a>
							</div>  
							 <div class="box-holder">
							   <a href="${pageContext.request.contextPath}/controlPanel">
							   <div class="box"><img src="${pageContext.request.contextPath}/resources/images/e-close.png"/>Close</div></a>
							</div>                          
						</div>
					</div>
				</div>								
			 </div>
				<!-- /Content -->
					<div class="span12">
					    <div class="widget">					
						<div class="widget-content">
							<div class="mobile"><h3>Patient Manager</h3></div> 						
							<div class="span3.5"><form:input path="searchPatientName" type="text" class="span3" placeholder="Search by Patient Name"  id="searchname"/></div>               
							<div class="span2"><form:input path="searchPhoneMobile"  type="text" class="span2" placeholder="Search by Phone Number" id="searchphone"/></div>                          
							<div class="span2"><form:input path="searchEmailId"  type="text" class="span2" placeholder="Search by Email Id" id="searchmailid"/></div>                             
							<div class="span2"><form:input path="searchTestVendorName"  type="text" class="span2" placeholder="Search by Test Vendor" id="searchvendorname"/></div>  
							<div class="span2"><a href="#" class="btn btn-info " onClick="searchvalue()">Search</a> <a href="#" class="btn btn-info " onClick="clearvalue()">Clear</a></div>               
							 	
						</div>
					   </div>  
					</div>  
				 <!------>
                <!-- /Content -->
				<div class="span12">
					<div class="widget-content">
						<div class="tab-content">
							<div class="tab-pane active" id="demo">
							<table class="table demo table-bordered " data-filter="#filter" data-page-size="5"
							       data-page-previous-text="prev" data-page-next-text="next">
							<!--<table class="table table-striped table-bordered">-->                            
								<thead>
									<tr class="widget-header">
										<th data-toggle="true">Patient Reg#</th>
										<th>Patient Name</th>
										<th data-hide="phone,tablet">Sex</th>
										<th data-hide="phone,tablet">Age</th>
										<th data-hide="phone,tablet">Preferred Contact</th>
										<th data-hide="phone,tablet">Contact #</th>
										<th data-hide="phone,tablet">Email Id</th>
										<th data-hide="phone">Postal Code</th>
										<th data-hide="phone">Doctor</th>
										<th data-hide="phone">Vendor</th>
									</tr>
								</thead>								
								<tbody id="gridvaluediv" class="mytable1">
								<c:forEach  items="${patientManager.patientDetailSubForm}" var="patientDetail" varStatus="gridRow" >
									<tr onClick="patientId('${patientDetail.patientIdRegNo}');" Style="cursor:pointer;">
										<td>${patientDetail.patientIdRegNo}</td>
										<td>${patientDetail.patientName}</td>
										<td>${patientDetail.sex}</td>
										<td>${patientDetail.age}</td>
										<td>${patientDetail.prefferedContact}</td>
										<td>${patientDetail.phoneContactNo}</td>
										<td>${patientDetail.emailId}</td>
										<td>${patientDetail.postofficecode}</td>    
										<td>${patientDetail.referringDoctorid}</td>
										<td>${patientDetail.referringVendoid}</td>                               
										<!--<td class="actions">
											<a href="#" class="btn btn-small btn-info"><i class="icon-ok"></i></a>
											<a href="#" class="btn btn-small btn-success"><i class="icon-remove"></i></a>
										</td>-->
									</tr>
								</c:forEach>	
								</tbody>
							</table>
							</div>			
						</div>
					</div>
				</div>          
                <!------>
			</div><!-- /row boxes -->
			
			<!-- Footer -->
			<div id="footer">
				<hr>
				<p class="pull-right">Gaddiel Technologies Pvt Ltd &copy; 2013</p>
			</div>
			<!-- /Footer -->
	 <!-- Navbar -->
    <div class="dock-wrapper row">    
        <div class="navbar navbar-fixed-bottom">
            <div class="navbar-inner">
                <div class="container">                         
                       <center>
                         <div class="btn-group btn-group-justified">                     
                       <a class="newenable btn btn-default" onClick="newPage()" id="newenable">
                          	 <img src="${pageContext.request.contextPath}/resources/images/e-add.png"/><br>New</a> 
													 
                        <a id="viewid"  class="btn btn-default viewid">
                        	<img src="${pageContext.request.contextPath}/resources/images/e-view.png"/><br>View</a>
						<a id="viewdisable" class="btn btn-default viewdisable ">
                             <img src="${pageContext.request.contextPath}/resources/images/d-view.png"/><br>View</a>
						<a href="#" class="btn btn-default editenable" id="editenable">
                        	<img src="${pageContext.request.contextPath}/resources/images/e-edit.png"/><br>Edit</a>
                        <a href="#" class="btn btn-default editdisable" id="editdisable">
                            <img src="${pageContext.request.contextPath}/resources/images/d-edit.png"/><br>Edit</a>
						<a href="#" class="btn btn-default deletenable" id="deletenable">
                        	<img src="${pageContext.request.contextPath}/resources/images/e-trash.png"/><br>Delete</a>
                        <a href="#" class="btn btn-default deletedisable" id="deletedisable">
                            <img src="${pageContext.request.contextPath}/resources/images/d-trash.png"/><br>Delete</a>
						<a href="${pageContext.request.contextPath}/controlPanel" class="btn btn-default">
                        	<img src="${pageContext.request.contextPath}/resources/images/e-close.png"/><br>Cancel</a>
                              </div>
                      </center>                        		
				</div>
           	</div>
		</div>
     </div>
	<!-- /Navbar -->
		</div>
		<!-- /Container -->
	</div>
	<!-- /Main content -->
<form:hidden path="dispatchGridView"/>
<form:hidden path="dispatch"/>
<form:hidden path="dispatchid"/>
	
</body>
<!-- Javascript files -->
 <script type="text/javascript">
$(function(){
		//these two line adds the color to each different row
  
    $(".mytable1 tr:even").addClass("eventr");
    $(".mytable1 tr:odd").addClass("oddtr");

 	//handle the mouseover , mouseout and click event
  $(".mytable1 tr")  
  .mouseover(function() {$(this).addClass("trover");})
  .mouseout(function() {$(this).removeClass("trover");})
  .click(function(){$(this).toggleClass("trclick");})
  .click(function(){$(this).siblings().removeClass('trclick');});
 
 }); 
</script>
 <script type="text/javascript">
        $(function () {
            $('table').bind('footable_breakpoint', function() {
                $('table').trigger('footable_expand_first_row');
            }).footable();
        });
		
		
    </script>
<script>
var form = document.getElementById("patientManagerId");
var js=jQuery.noConflict();

js(".viewid").hide();
js(".viewdisable").show();

js(".editenable").hide();
js(".editdisable").show();

js(".deletenable").hide();
js(".deletedisable").show();

js("#gridvaluediv").hide();

function patientId(idvalue)
{
	
	var viewid=idvalue;
	//alert(viewid);
	

	 $(".viewid").click(function () 

		{

		
			form.dispatch.value="view";
			form.dispatchid.value=idvalue;
	
 			form.submit();
 			//alert(form.dispatchGridView.value);
 			//alert(form.dispatch.value);
		});
	 $(".deletenable").click(function(){  
		  form.dispatch.value="delete";
		  form.dispatchid.value=idvalue;
		   
		  form.submit();
		 });  

	
   
}

function searchvalue()
{
	//alert("");


	form.dispatch.value="search";
	form.submit();
	
	}
	if(form.dispatch.value=="search")
	{
		js("#gridvaluediv").show();
		js(".viewid").show();
		js(".viewdisable").hide();

		js(".editenable").hide();
		js(".editdisable").show();

		js(".deletenable").show();
		js(".deletedisable").hide();
		
		}
function clearvalue()
{
	
	document.getElementById("searchname").value="";
	document.getElementById("searchphone").value="";
	document.getElementById("searchmailid").value="";
	document.getElementById("searchvendorname").value="";
	js("#gridvaluediv").hide();
	
	js(".viewid").hide();
	js(".viewdisable").show();

	js(".editenable").hide();
	js(".editdisable").show();

	js(".deletenable").hide();
	js(".deletedisable").show();
	}
function newPage()
{
	form.dispatch.value="new";
	 form.submit();
}	
</script>
</form:form>
</html>
