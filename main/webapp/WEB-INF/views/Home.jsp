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

    <title>SB Admin 2 - Dashboard</title>

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

        <div class="card o-hidden border-0 shadow-lg my-5 mx-auto" style="max-width: 300px;" >
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">테이블 접속</h1>
                            </div>
                            <form class="user" action="visitTable" method="post"
                                  onsubmit="return formCheck(this)">
                                <div class="form-group">
                                    <input type="text" name="tablenum" class="form-control form-control-user" placeholder="테이블번호입력...">
                                </div>
                                <button class="btn btn-primary btn-user btn-block">
                                    입력
                                </button>

                                <a href="admin" class="btn btn-danger btn-user btn-block">
                                    관리자페이지
                                </a>
                                
                            </form>
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
	
	<script type="text/javascript">
		function formCheck(formObj){
			let tablenumInput = formObj.tablenum; // <input name="tablenum" >
			console.log("입력한 값 : " + tablenumInput.value);
			let num = Number(tablenumInput.value);
			/* 입력된 테이블 번호가 숫자 인지 확인 */
			if(isNaN(num)){
				console.log('테이블번호에 문자가 입력');
				alert('번호는 숫자로 입력해주세요!');
				tablenumInput.value = ""; // 입력된 값 초기화
				tablenumInput.focus();    // 입력태그에 포커스
				return false;             // submit 중지
			}
			
			/* 1 ~ 6 사이의 번호 인지 확인 */
			let check = ( num >= 1 && num <= 6 );
			if(  !check  ){
				alert('1 ~ 6 사이의 번호를 입력해주세요!');
				tablenumInput.value = ""; // 입력된 값 초기화
				tablenumInput.focus();    // 입력태그에 포커스
				return false;             // submit 중지
			}
			
			return true;
		}
	
	</script>
	
	<c:if test="${msg != null }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
	</c:if>
	
</body>

</html>








