<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${not empty alertType}">
	<div class="container clearfix">
	        	<div class="row">
	                <div class="alert alert-${alertType} col-25 alert-dismissable">
	                <div class="container" style="padding-top: 3px;">
	                    <div class="alert-icon">
	                        <i class="material-icons">error_outline</i>
	                    </div>
	                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                        <span aria-hidden="true"><i class="material-icons">clear</i></span>
	                    </button>
	                    <b>Error Alert:</b> ${alertText}
	                </div>
	            </div>
	        </div>
	        </div>
</c:if>