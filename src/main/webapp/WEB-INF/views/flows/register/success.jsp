<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<h3>Name: ${registerModel.user.name}</h3>
<h3>Phone number: ${registerModel.user.phoneNumber}</h3>
<h3>First Name: ${registerModel.userDetails.firstName}</h3>
<h3>Last Name: ${registerModel.userDetails.lastName}</h3>
<h3>OTP: ${registerModel.userDetails.otpValue}</h3>
<h3>City: ${registerModel.userDetails.city}</h3>
