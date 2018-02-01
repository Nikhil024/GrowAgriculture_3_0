<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
       FarmerLogin
    </title>
    <jsp:include page="../../../headerCSS.jsp"/>
</head>

<body class="login-page ">
<jsp:include page="../../../navbar.jsp"></jsp:include>
    <div class="page-header header-filter" style="background-image: url(&apos;../assets/img/bg7.jpg&apos;); background-size: cover; background-position: top center;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 ml-auto mr-auto">
                    <div class="card card-signup">
                        <form:form class="form" method="post" modelAttribute="user">
                            <div class="card-header card-header-primary text-center">
                                <h4 class="card-title">Log in</h4>
                                <!-- <div class="social-line">
                                    <a href="#pablo" class="btn btn-just-icon btn-link">
                                        <i class="fa fa-facebook-square"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-link">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-link">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div> -->
                            </div>
                            <div class="card-body">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">face</i>
                                    </span>
                                    <form:input path="phoneNumber" type="text" class="form-control" placeholder="Phone Number"/>
                                </div>
                                <%-- <form:errors path="phoneNumber" cssClass="text-danger" element="p"/>
                                <form:errors path="password" cssClass="text-danger" element="p"/>
                                <form:errors path="confirmPassword" cssClass="text-danger" element="p"/>
                                <form:errors path="termsAndConditions" cssClass="text-danger" element="p"/>
                                <form:errors path="password" cssClass="text-danger" element="p"/>
                                <form:errors path="password" cssClass="text-danger" element="p"/>
                                <form:errors path="password" cssClass="text-danger" element="p"/>
                                <form:errors path="password" cssClass="text-danger" element="p"/> --%>
                                
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">lock_outline</i>
                                    </span>
                                    <form:input path="password" type="password" class="form-control" placeholder="Password"/>
                                </div>
                            </div>
                            <div class="footer text-center">
                                <input type="submit" name="_eventId_checkUser" class="btn btn-primary btn-link btn-wd btn-lg">Go to Dashboard</a>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../../../footer.jsp"/>
    </div>
    <jsp:include page="../../../bodyJS.jsp"/>
    <noscript>
        <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=111649226022273&ev=PageView&noscript=1" />
    </noscript>
</body>

</html>