<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>결제 준비</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">

	<!-- Font Awesome JS -->
	<script src="https://kit.fontawesome.com/633fcd26ea.js" crossorigin="anonymous"></script>

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
		
	<style type="text/css">
		* {
		  font-family: "Do Hyeon", sans-serif;
		  font-weight: 400;
		  font-style: normal;
		}	
	</style>

</head>

<body class="bg-gradient-primary">

<div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5 mx-auto" style="max-width: 600px;" >
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">${param.tbnumber }번 테이블 결제 대기중</h1>
                            </div>
							<div>
								<c:forEach items="${orderList}" var="odinfo">
									<div>
										${odinfo.MNNAME}
									</div>
								</c:forEach>
							</div>
                        </div>
            </div>
        </div>

    </div>
	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/js/sb-admin-2.min.js"></script>
	
	<!-- SockJs -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script type="text/javascript">
		 var sock = new SockJS('paySocket'); // 소켓 접속 요청
		 sock.onopen = function() {  // 접속이 되면 실행
		     console.log('open');
		 };
	
		 sock.onmessage = function(e) { // 서버에서 메세지를 받으면 실행
		     console.log('message', e.data);
		 	 window.opener.payTableInfo(e.data);
		 };
	
		 sock.onclose = function() { // 접속이 해제 되면 실행
		     console.log('close');
		 };
	</script>		
</body>

</html>








