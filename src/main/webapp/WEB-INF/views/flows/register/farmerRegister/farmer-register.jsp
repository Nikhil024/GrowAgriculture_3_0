<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>
        <spring:message code="registerPage.title.name"/>
    </title>
    <jsp:include page="../../../headerCSS.jsp"/>
</head>

<body class="signup-page ">
    <jsp:include page="../../../navbar.jsp"></jsp:include>
    <div class="page-header header-filter" filter-color="" style="background-image: url(/agriculture/resources/img/farmerBackgroundImage.jpg;); background-size: cover; background-position: top center;">
        <div class="container">
            <div class="row">
                <div class="col-md-10 ml-auto mr-auto">
                    <div class="card card-signup">
                        <h2 class="card-title text-center"><spring:message code="registerPage.title.name"/></h2>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-5 ml-auto">
                                    <div class="info info-horizontal">
                                        <div class="icon icon-rose">
                                           <i class="material-icons">group</i>
                                        </div>
                                        <div class="description">
                                            <h4 class="info-title"><spring:message code="registerPage.side.heading.text1"/></h4>
                                            <p class="description">
                                               <spring:message code="registerPage.side.description.text1"/>
                                            </p>
                                        </div>
                                    </div>
                                     <div class="info info-horizontal">
                                        <div class="icon icon-success">
                                           <i class="material-icons">touch_app</i>
                                        </div>
                                        <div class="description">
                                            <h4 class="info-title"><spring:message code="registerPage.side.heading.text2"/></h4>
                                            <p class="description">
                                               <spring:message code="registerPage.side.description.text2"/>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="info info-horizontal">
                                        <div class="icon icon-danger">
                                          <i class="material-icons">airline_seat_recline_extra</i>
                                        </div>
                                        <div class="description">
                                            <h4 class="info-title"><spring:message code="registerPage.side.heading.text3"/></h4>
                                            <p class="description">
                                               <spring:message code="registerPage.side.description.text3"/>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5 mr-auto">
                                   <!--  <div class="social text-center">
                                        <button class="btn btn-just-icon btn-round btn-twitter">
                                            <i class="fa fa-twitter"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-dribbble">
                                            <i class="fa fa-dribbble"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-facebook">
                                            <i class="fa fa-facebook"> </i>
                                        </button>
                                        <h4> or be classical </h4>
                                    </div> -->
                                    <form:form class="form" method="post" modelAttribute="user">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">contact_phone</i>
                                                </span>
                                                <form:input type="text" path="phoneNumber" value="" class="form-control" placeholder="Phone Number"/>
                                            </div>
                                            <form:errors path="phoneNumber" cssClass="text-danger" element="p"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">contact_phone</i>
                                                </span>
                                                <form:input type="text" path="name" value="" class="form-control" placeholder="Name"/>
                                            </div>
                                            <form:errors path="name" cssClass="text-danger" element="p"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">fingerprint</i>
                                                </span>
                                                <form:input type="password" path="password" class="form-control" placeholder="Password"/>
                                            </div>
                                            <form:errors path="password" cssClass="text-danger" element="p"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                   <i class="material-icons">fingerprint</i>
                                                </span>
                                                <form:input type="password" path="confirmPassword" placeholder="Confirm Password" class="form-control" />
                                            </div>
                                            <form:errors path="confirmPassword" cssClass="text-danger" element="p"/>
                                        </div>
                                         <div class="form-check">
                                            <label class="form-check-label">
                                                <input id="termsAndConditionsCheckbox" class="form-check-input" type="checkbox" value="" checked>
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                                I agree to the
                                                	<a data-toggle="modal" data-target="#noticeModal" >terms and conditions</a>.
                                            </label>
                                        </div>
                                        <form:errors path="termsAndConditions" cssClass="text-danger" element="p"/>
                                        <form:hidden path="role" value="farmer"/>
                                        <form:hidden path="termsAndConditions" value=""/>
                                        
                                        <div class="text-center">
                                            <input type="submit" id="toProfile" name="_eventId_checkUser" value="Get Started" class="btn btn-primary btn-round">
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../../../footer.jsp"/>
    </div>
    <jsp:include page="../../../bodyJS.jsp"/>
</body>

</html>