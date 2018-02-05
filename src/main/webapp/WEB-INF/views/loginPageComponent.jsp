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
       ${userType}<spring:message code=""/>
    </title>
    <jsp:include page="headerCSS.jsp"/>
</head>

<body class="login-page">
<jsp:include page="navbar.jsp"></jsp:include>
    <div class="page-header header-filter" style="background-image: url(/agriculture/resources/img/${backgroundImage};); background-size: cover; background-position: top center;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 ml-auto mr-auto">
                    <div class="card card-signup">
                        <form:form class="form" action="<spring:url value="/login/${userType}Login"/>" method="post" modelAttribute="user">
                            <div class="card-header card-header-primary text-center">
                                 <div class="social-line">
                                   <h4 class="card-title">LOGIN</h4>
                                   <br/>
                                </div>
                            </div>
                            <div class="card-body">
                            <br/>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">face</i>
                                    </span>
                                    <form:input path="phoneNumber" type="text" class="form-control" placeholder="Phone Number"/>
                                </div>
                                <form:errors path="phoneNumber" cssClass="text-danger" element="p"/>
                                
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">lock_outline</i>
                                    </span>
                                    <form:input path="password" type="password" class="form-control" placeholder="Password"/>
                                </div>
                                 <form:errors path="password" cssClass="text-danger" element="p"/>
                            </div>
                            <div class="footer text-center">
                                <input type="submit" name="_eventId_checkUser" value="login" class="btn btn-primary btn-link btn-wd btn-lg">
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </div>
    <jsp:include page="bodyJS.jsp"/>
    <noscript>
        <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=111649226022273&ev=PageView&noscript=1" />
    </noscript>
</body>

</html>