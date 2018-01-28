<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="<spring:url value="/resources/js/core/jquery.min.js"/>"></script>
    <script src="<spring:url value="/resources/js/core/popper.min.js"/>"></script>
    <script src="<spring:url value="/resources/js/bootstrap-material-design.min.js"/>"></script>
    <!--  Plugin for Date Time Picker and Full Calendar Plugin-->
    <script src="<spring:url value="/resources/js/plugins/moment.min.js"/>"></script>
    <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
    <script src="<spring:url value="/resources/js/plugins/bootstrap-selectpicker.js"/>"></script>
    <!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
    <script src="<spring:url value="/resources/js/plugins/bootstrap-tagsinput.js"/>"></script>
    <!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
    <script src="<spring:url value="/resources/js/plugins/jasny-bootstrap.min.js"/>"></script>
    <!--	Plugin for Small Gallery in Product Page -->
    <script src="<spring:url value="/resources/js/plugins/jquery.flexisel.js"/>"></script>
    <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
    <script src="<spring:url value="/resources/js/plugins/bootstrap-datetimepicker.min.js"/>"></script>
    <!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
    <script src="<spring:url value="/resources/js/plugins/nouislider.min.js"/>"></script>
    <!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
    <script src="<spring:url value="/resources/js/material-kit.min.js?v=2.0.0"/>"></script>
    <!-- Fixed Sidebar Nav - js With initialisations For Demo Purpose, Don't Include it in your project -->
    <script src="<spring:url value="/resources/assets-for-demo/js/material-kit-demo.js"/>"></script>
    <!-- Plugins for presentation and navigation  -->
    <script src="<spring:url value="/resources/assets-for-demo/js/modernizr.js"/>"></script>
    <script src="<spring:url value="/resources/assets-for-demo/js/vertical-nav.js"/>"></script>
    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
    <!-- Sharrre libray -->
    <script src="<spring:url value="/resources/assets-for-demo/js/jquery.sharrre.js"/>">
    </script>
    <script>
    $(document).ready(function() {
        materialKitDemo.initFormExtendedDatetimepickers();
    });
    
    var abc = "<span class='form-control-feedback'><i class='material-icons'>done</i></span>";
    
    $("#lastName").click(function(){
    	console.log("sessionID:: "+sessionID);
    	if($("#otpValue").val() != null && sessionID != null){
    		if($("#otpValue").val().toString().length > 3){
    			otpValue = $("#otpValue").val();
    			 $.ajax({  
    	                type : "POST",   
    	                url : "${pageContext.request.contextPath}/checkOtp",   
    	                data : "otpValue="+otpValue+",sessionID="+sessionID,  
    	                success : function(response) { 
    	                	alert(response[1] == "OTP Matched");
    	                 	if(response[1] == "OTP Matched"){
    	                 		var htmlCode = $("#otpValue").parent().parent().html();
    	            			$("#otpValue").parent().parent().addClass('has-success');
    	            			$("#otpValue").parent().parent().html(htmlCode + abc);
    	                 	}   
    	                },  
    	                error : function(e) {  
    	                	alert("eroro");
    	                 console.log('Error: ' + e[0]);   
    	                }  
    	               });  
    		}
    	}
    });
    
        $(document).ready(function() {
            $('#twitter').sharrre({
                share: {
                    twitter: true
                },
                enableHover: false,
                enableTracking: false,
                enableCounter: false,
                buttons: {
                    twitter: {
                        via: 'CreativeTim'
                    }
                },
                click: function(api, options) {
                    api.simulateClick();
                    api.openPopup('twitter');
                },
                template: '<i class="fa fa-twitter"></i> Twitter',
                url: 'http://demos.creative-tim.com/material-kit-pro/presentation.html'
            });

            $('#facebook').sharrre({
                share: {
                    facebook: true
                },
                enableHover: false,
                enableTracking: false,
                enableCounter: false,
                click: function(api, options) {
                    api.simulateClick();
                    api.openPopup('facebook');
                },
                template: '<i class="fa fa-facebook-square"></i> Facebook',
                url: 'http://demos.creative-tim.com/material-kit-pro/presentation.html'
            });

            $('#google').sharrre({
                share: {
                    googlePlus: true
                },
                enableCounter: false,
                enableHover: false,
                enableTracking: true,
                click: function(api, options) {
                    api.simulateClick();
                    api.openPopup('googlePlus');
                },
                template: '<i class="fa fa-google-plus"></i> Google',
                url: 'http://demos.creative-tim.com/material-kit-pro/presentation.html'
            });
        });


        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-46172202-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();

        // Facebook Pixel Code Don't Delete
        ! function(f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function() {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window,
            document, 'script', '//connect.facebook.net/en_US/fbevents.js');

        try {
            fbq('init', '111649226022273');
            fbq('track', "PageView");

        } catch (err) {
            console.log('Facebook Track Error:', err);
        }
    </script>