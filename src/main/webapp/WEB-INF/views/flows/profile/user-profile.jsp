<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
         <spring:message code="profilePage.title.name"/>
    </title>
    <jsp:include page="../../headerCSS.jsp"/>
    <style type="text/css">
    
    	.disabled {
    		}
    </style>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
   <script type="text/javascript">
    var sessionID = "";
    var count = 0;
    if(localStorage.getItem("count") != null){
    	count = parseInt(localStorage.getItem("count"));
    }
    
      $(document).ready(function(){
    	  $("#termsAndConditions").val("");
    	  var successTickCode = "<span class='form-control-feedback'><i class='material-icons'>done</i></span>";
    	if(localStorage.getItem("OtpVerified") != null && localStorage.getItem("OtpValue") != null){
    		if(localStorage.getItem("OtpVerified") == "yes"){
    			$('.form-control-feedback').remove();
	    		var htmlCode = $("#otpValue").parent().parent().html();
	    		$("#otpValue").parent().parent().html(htmlCode + successTickCode);
	    		$("#otpValue").parent().parent().addClass('has-success is-focused');
	    		$("#otpValue").attr("style","background-color: white;pointer-events: none;");
	    		$("#otpValue").val(localStorage.getItem("OtpValue"));
	    		$("#otpSessionId").val(sessionID);
    			$("#otpValue").val(localStorage.getItem("OtpValue"));
    			$("#otpRetries").val(localStorage.getItem("count"));
    		}
        }else{
        	if (localStorage.getItem("OtpVerified") == "no"){
	        	var htmlCode = $("#otpValue").parent().parent().html();
	     		$("#otpValue").parent().parent().addClass('has-danger is-focused');
	     		$("#otpValue").parent().parent().html(htmlCode + failureCrossCode);
	     		$("#otpValue").attr("placeholder", "Re-Enter the OTP recieved on your Phone");
	     		localStorage.setItem("OtpVerified","no");
        	}
     		count = count + 1;
        	if(count <= 3){
	    	  	$.ajax({  
	                type : "POST",   
	                url : "${pageContext.request.contextPath}/sendOtp",   
	                data : "phoneNumber=${user.phoneNumber}",  
	                success : function(response) {  
	                 sessionID = response[1];
	                },  
	                error : function(e) {  
	                 console.log('Error: ' + e); 
	                }  
	               }); 
        	}else{
        		$('.form-control-feedback').remove();
        		var htmlCode = $("#otpValue").parent().parent().html();
         		$("#otpValue").parent().parent().addClass('has-danger is-focused');
         		$("#otpValue").parent().parent().html(htmlCode + failureCrossCode);
         		$("#otpValue").attr("placeholder", "We are experienceing some problems Try again Later!!");
         		localStorage.setItem("OtpVerified","no");
         		$("#otpValue").prop("disabled",true);
	    		$("#otpValue").attr("style","background-color: white");
         		$('#profile_submit').attr('disabled','disabled');
         		$("#otpValue").parent().parent().attr("style","border-color: #f44336");
        	}
        }
    });
    </script>
    
</head>

<body class="profile-page ">
   <jsp:include page="../../navbar.jsp"></jsp:include>
    <div class="page-header header-filter" data-parallax="true" style="background-image: url('../assets/img/examples/city.jpg');"></div>
    <div class="main main-raised">
        <div class="profile-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <div class="profile">
                            <div class="avatar">
                                <img src="../assets/img/faces/christian.jpg" alt="Circle Image" class="img-raised rounded-circle img-fluid">
                            </div>
                            <div class="name">
                                <h3 class="title">${userDetailsModel.firstName}</h3>
                                <h6> <spring:message code="profilePage.farmer.user.type"/></h6>
                            </div>
                        </div>
                        <!-- <div class="follow">
                            <button class="btn btn-fab btn-primary btn-round" rel="tooltip" title="Follow this user">
                                <i class="material-icons">add</i>
                            </button>
                        </div> -->
                    </div>
                </div>
                <div class="description text-center">
                    <p>An artist of considerable range, Chet Faker &#x2014; the name taken by Melbourne-raised, Brooklyn-based Nick Murphy &#x2014; writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. </p>
                </div>
                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <div class="profile-tabs">
                            <ul class="nav nav-pills nav-pills-icons justify-content-center" role="tablist">
                                <!--
	                                color-classes: "nav-pills-primary", "nav-pills-info", "nav-pills-success", "nav-pills-warning","nav-pills-danger"
	                            -->
                                <li class="nav-item">
                                
                                    <a class="nav-link" href="${flowExecutionUrl}&_eventId_home" role="tab" data-toggle="tab">
                                        <i class="material-icons">palette</i> Register
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" href="${flowExecutionUrl}&_eventId_profile" role="tab" data-toggle="tab">
                                        <i class="material-icons">people</i> Profile
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- End Profile Tabs -->
                        <form:form class="form" method="post" modelAttribute="userDetailsModel">
	                        
	                        <div class="form-group">
	                            <div class="input-group">
	                            	<span class="input-group-addon">
	                                	<i class="material-icons">contact_phone</i>
	                                </span>
	                                <form:input type="text" path="otpValue" value="" class="form-control" placeholder="Enter OTP recieved on your phone"/>
	                            </div>
	                            <form:errors path="otpValue" cssClass="text-danger" element="p"/>
	                         </div>
	                        
	                        <div class="form-group">
	                            <div class="input-group">
	                            	<span class="input-group-addon">
	                                	<i class="material-icons">contact_phone</i>
	                                </span>
	                                <form:input type="text" path="lastName" value="" class="form-control" placeholder="Last Name"/>
	                            </div>
	                            <form:errors path="lastName" cssClass="text-danger" element="p"/>
	                         </div>
	                         
	                         <div class="form-group">
	                            <div class="input-group">
	                            	<span class="input-group-addon">
	                                	<i class="material-icons">contact_phone</i>
	                                </span>
	                                <form:input type="text" path="address" value="" class="form-control" placeholder="Address"/>
	                            </div>
	                            <form:errors path="address" cssClass="text-danger" element="p"/>
	                         </div>
							
							
							<div class="form-group">
	                            <div class="input-group">
	                            	<span class="input-group-addon">
	                                	<i class="material-icons">contact_phone</i>
	                                </span>
	                                <form:input type="text" path="city" value="" class="form-control" placeholder="City"/>
	                            </div>
	                            <form:errors path="city" cssClass="text-danger" element="p"/>
	                         </div>
							
							<div class="form-group">
	                            <div class="input-group">
	                            	<span class="input-group-addon">
	                                	<i class="material-icons">contact_phone</i>
	                                </span>
	                                <form:input type="text" path="postalCode" value="" class="form-control" placeholder="Postal Code"/>
	                            </div>
	                            <form:errors path="postalCode" cssClass="text-danger" element="p"/>
	                         </div>
	                         
	                         <div class="form-group">
	                            <div class="input-group">
	                            	<span class="input-group-addon">
	                                	<i class="material-icons">contact_phone</i>
	                                </span>
	                                <form:input type="text" path="aboutMe" value="" class="form-control" placeholder="About Me"/>
	                            </div>
	                            <form:errors path="aboutMe" cssClass="text-danger" element="p"/>
	                         </div>
	                         
								<form:hidden path="otpSessionId" value=""/>   
								<form:hidden path="otpRetries" value=""/> 
	                         
							 <div class="form-group">
                             	<label for="dateOfBirth" class="label-control">Date Of Birth</label>
                                <form:input type="text" path="dateOfBirth" class="form-control datepicker" value="" placeholder="DD/MM/YYYY"/>
                                <form:errors path="dateOfBirth" cssClass="text-danger" element="p"/>
                             </div>
								
							 <div class="text-center">
                                    <input type="submit" name="_eventId_submit" value="Get Started" class="btn btn-primary btn-round"/>
                             </div>
                        </form:form>
                    </div>
                </div>
                <div class="tab-content tab-space">
                    <div class="tab-pane active work" id="work">
                        <div class="row">
                            <!-- <div class="col-md-7 ml-auto">
                                <h4 class="title">Latest Collections</h4>
                                <div class="row collections">
                                    <div class="col-md-6">
                                        <div class="card card-background" style="background-image: url('../assets/img/examples/mariya-georgieva.jpg')">
                                            <a href="#pablo"></a>
                                            <div class="card-body">
                                                <label class="badge badge-warning">Spring 2016</label>
                                                <a href="#pablo">
                                                    <h2 class="card-title">Stilleto</h2>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card card-background" style="background-image: url('../assets/img/examples/clem-onojeghuo.jpg')">
                                            <a href="#pablo"></a>
                                            <div class="card-body">
                                                <label class="badge badge-info">Spring 2016</label>
                                                <a href="#pablo">
                                                    <h2 class="card-title">High Heels</h2>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card card-background" style="background-image: url('../assets/img/examples/olu-eletu.jpg')">
                                            <a href="#pablo"></a>
                                            <div class="card-body">
                                                <label class="badge badge-danger">Summer 2016</label>
                                                <a href="#pablo">
                                                    <h2 class="card-title">Flats</h2>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card card-background" style="background-image: url('../assets/img/examples/darren-coleshill.jpg')">
                                            <a href="#pablo"></a>
                                            <div class="card-body">
                                                <label class="badge badge-success">Winter 2015</label>
                                                <a href="#pablo">
                                                    <h2 class="card-title">Men's Sneakers</h2>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-md-2 mr-auto ml-auto stats">
                            <!--     <h4 class="title">Stats</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <b>60</b> Products</li>
                                    <li>
                                        <b>4</b> Collections</li>
                                    <li>
                                        <b>331</b> Influencers</li>
                                    <li>
                                        <b>1.2K</b> Likes</li>
                                </ul>
                                <hr>
                                <h4 class="title">About his Work</h4>
                                <p class="description">French luxury footwear and fashion. The footwear has incorporated shiny, red-lacquered soles that have become his signature.</p>
                                <hr>
                                <h4 class="title">Focus</h4>
                                <span class="badge badge-primary">Footwear</span>
                                <span class="badge badge-rose">Luxury</span>
                            </div> -->
                        </div>
                    </div>
                    <div class="tab-pane connections" id="connections">
                        <div class="row">
                            <div class="col-md-5 ml-auto mr-auto">
                                <div class="card card-profile card-plain">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="card-header card-header-image">
                                                <a href="#pablo">
                                                    <img class="img" src="../assets/img/faces/avatar.jpg" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="card-body">
                                                <h4 class="card-title">Gigi Hadid</h4>
                                                <h6 class="card-category text-muted">Model</h6>
                                                <p class="card-description">
                                                    Don't be scared of the truth because we need to restart the human foundation in truth...
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 mr-auto ml-auto">
                                <div class="card card-profile card-plain">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="card-header card-header-image">
                                                <a href="#pablo">
                                                    <img class="img" src="../assets/img/faces/marc.jpg" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="card-body">
                                                <h4 class="card-title">Marc Jacobs</h4>
                                                <h6 class="card-category text-muted">Designer</h6>
                                                <p class="card-description">
                                                    Don't be scared of the truth because we need to restart the human foundation in truth...
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5 ml-auto mr-auto">
                                <div class="card card-profile card-plain">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="card-header card-header-image">
                                                <a href="#pablo">
                                                    <img class="img" src="../assets/img/faces/kendall.jpg" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="card-body">
                                                <h4 class="card-title">Kendall Jenner</h4>
                                                <h6 class="card-category text-muted">Model</h6>
                                                <p class="card-description">
                                                    I love you like Kanye loves Kanye. Don't be scared of the truth.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 ml-auto mr-auto">
                                <div class="card card-profile card-plain">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="card-header card-header-image">
                                                <a href="#pablo">
                                                    <img class="img" src="../assets/img/faces/card-profile2-square.jpg" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="card-body">
                                                <h4 class="card-title">George West</h4>
                                                <h6 class="card-category text-muted">Model/DJ</h6>
                                                <p class="card-description">
                                                    I love you like Kanye loves Kanye.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../../footer.jsp"></jsp:include>
    <jsp:include page="../../bodyJS.jsp"></jsp:include>
</body>

</html>
</html>
</html>