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

    <title>AdminPage</title>

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
	
	<!-- toastr CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.css" integrity="sha512-oe8OpYjBaDWPt2VmSFR+qYOdnTjeV9QPLJUeqZyprDEQvQLJ9C5PCFclxwNuvb/GQgQngdCXzKSFltuHD3eCxA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		
	<style type="text/css">
		* {
		  font-family: "Do Hyeon", sans-serif;
		  font-weight: 400;
		  font-style: normal;
		}	
	</style>

	<style type="text/css">
		.tblOrderInfo{
			margin-top: 3px;
			margin-bottom: 3px;
			padding:5px;
			display: flex;
			color: black;
			font-size: 20px;	
			cursor: pointer;
			border:1px solid white;
			border-radius: 7px;
		}
		.tblOrderInfo:hover{
			border-color:#4e73df
		}
		
		.cencelLine{
			text-decoration: line-through;
    		text-decoration-color: red;
    		text-decoration-thickness: 3px;
		}
		
	</style>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fa-solid fa-utensils"></i>
                </div>
                <div class="sidebar-brand-text mx-3">관리자 페이지</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <div class="nav-link" >
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>메인화면</span>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                주문관리
            </div>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <div class="nav-link"  >
                    <i class="fa-solid fa-clipboard"></i>
                    <span>주문현황</span>
                </div>
            </li>            
                        
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-md-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-md-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item">
	                        <div class="nav-link">
	                        	<button class="btn btn-primary" style="min-width: 80px; margin-right:5px;" onclick="connAlert()">버튼</button>
	                            <button class="btn btn-dark" style="min-width: 80px;" onclick="orderAlert()" >버튼</button>
	                        </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
					<div class="d-sm-flex align-items-center justify-content-between mb-2">
						<div class="mb-0 bg-primary rounded py-2 px-4" >
							<div class="text-white"> 주문현황 </div>
							
						</div>
					</div>

					<!-- 테이블 별 주문 목록 출력 -->
                    <div class="row" >
                    
                    <c:forEach begin="1" end="6"  varStatus="status">
						<div class="col-md-6 col-lg-6 col-xl-4 my-3">
							<div class="card">
								<div class="card-header " style="display: flex;align-items: center;">
									<div class="text-primary" style="font-size:20px;">
										${status.index }번 테이블 <span id="visit${status.index }"></span>
									</div>
									<div style="flex-grow:1; text-align: right;">
										<button class="btn btn-primary" onclick="orderPay('${status.index }')">결제</button>
									</div>
								</div>
								<div class="card-body p-3" id="tb${status.index }" style="height:300px;overflow: scroll;">
									<%-- ${status.index }번 테이블 주문내역 출력 
									( id="tb${status.index }") --%>
								</div>
							</div>
						</div>
                    </c:forEach>


						
                    </div>

		    <!-- Scroll to Top Button-->
		    <a class="scroll-to-top rounded" href="#page-top">
		        <i class="fas fa-angle-up"></i>
		    </a>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
	<!-- toastr JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js" integrity="sha512-lbwH47l/tPXJYG9AcFNoJaTMhGvYWhVM9YI43CT+uteTRRaiLCui8snIgyAN8XWgNjNhCqlAUdzZptso6OCoFQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/js/sb-admin-2.min.js"></script>

	<!-- SockJs -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script type="text/javascript">
		 var sock = new SockJS('tableSocket'); // 소켓 접속 요청
		 sock.onopen = function() {  // 접속이 되면 실행
		     console.log('open');
		     //sock.send('test');    // 서버에 메세지를 전송
		 };
	
		 sock.onmessage = function(e) { // 서버에서 메세지를 받으면 실행
		     console.log('message', e.data);
		 	 let resMsg = JSON.parse(e.data);
		 	 /* 테이블에 손님이 새로 입장하는 경우  */
		 	 if(resMsg.msgType == 'conn' && resMsg.msgType != undefined ){
		 		/* 관리자 페이지에 입장알림 출력 */
				toastr.options.timeOut = 3000;
				toastr.info(resMsg.tbnumber+'번 테이블 입장','입장알림');
		 		 
		 	 } else {
			 	 /* 테이블에서 주문요청이 들어온 경우 */
			 	 /* 해당 테이블의 주문 내역 갱신 */
			 	 console.log("테이블 번호 :" + resMsg.tbnumber);
			 	 console.log("테이블 회차 :" + resMsg.tbvisit);
			 	 getTableOrderList(resMsg.tbnumber, resMsg.tbvisit);
			 	/* 관리자 페이지에 주문알림 출력 */
				 toastr.options.timeOut = 0;
				 toastr.error(resMsg.tbnumber+'번 테이블 주문','주문알림');
		 	 }
		     //sock.close();
		 };
	
		 sock.onclose = function() { // 접속이 해제 되면 실행
		     console.log('close');
		 	 alert('접속이 해제 되었습니다!');
		 	 location.href="/";
		 };
	</script>

	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	<script type="text/javascript">
	getTableOrderListALL();
	
	function getTableOrderListALL(){
		/* 전체 주문내역 조회 요청 */
		let odList = null;
		$.ajax({
			url : "getTableOrderListALL",
			type : "post",
			dataType : "json",
			async : false,
			success: function(res){
				odList = res;
			}
		});
		/* 주문내역 출력 */
		for(let odinfo of odList){
			let odDiv = createOrderDiv(odinfo);
			document.getElementById('tb'+odinfo.TBNUMBER).appendChild( odDiv );
			document.getElementById('visit'+odinfo.TBNUMBER).innerText = "visit : "+odinfo.TBVISIT;
		}
	}
	
	function createOrderDiv(odinfo){
		let odDiv = document.createElement('div');
		odDiv.classList.add('tblOrderInfo');
		if(Number(odinfo.ODCOUNT) == 0 ){
			odDiv.classList.add('cencelLine');
		}
		
		odDiv.innerHTML = `<div>\${odinfo.MNNAME}</div><div style="flex-grow:1; text-align:right;">\${odinfo.ODCOUNT} 개</div>` ;
		odDiv.addEventListener('click', function(e){
			/* 주문 클릭시 실행할 내용 */
			let modCount = prompt(odinfo.MNNAME+' 선택! 취소할 수량 입력');
			/* 주문한 수보다 취소 입력값이 큰 경우 주문수로 조정 */
			if(Number(modCount) > Number(odinfo.ODCOUNT)){
				modCount = Number(odinfo.ODCOUNT);
			}
			updateOrderInfo(odinfo.ODCODE, modCount, odinfo.TBNUMBER, odinfo.TBVISIT);
		});
		return odDiv;
	}
	
	function updateOrderInfo(odcode, modCount, tbnumber, tbvisit){
		console.log('취소할 주문코드 : ' + odcode);
		console.log('취소할 주문수량 : ' + modCount);
		/* 주문 취소 요청 */
		$.ajax({
			url : "cancelOrder",
			type : "post",
			data : { 'odcode':odcode, 'modCount' : modCount},
			success : function(res){
				/* 주문 취소 처리 성공 */
				/* 해당 테이블의 주문 정보 갱신 */
				getTableOrderList( tbnumber, tbvisit );
			}
		});
		
	}
	
	/* 테이블 별 주문내역 조회 기능 */
	function getTableOrderList( tbnumber, tbvisit ){
		/* 테이블 별 주문내역 조회 */
		let odList = null;
		$.ajax({
			url : "getTableOrderList",
			type : "post",
			data : { "tbnumber" : tbnumber, "tbvisit" : tbvisit },
			dataType : "json",
			async : false,
			success: function(res){
				odList = res;
			}
		});		
		/* 주문내역 출력 기능 호출 */
		printTableOrderList(tbnumber,odList);
	}
	
	/* 주문 내역 출력 기능 */
	function printTableOrderList( tbnumber, odList ){
		document.getElementById('tb'+tbnumber).innerHTML = "";
		/* 해당 테이블의 주문내역 출력 */
		for(let odinfo of odList){
			let odDiv = createOrderDiv(odinfo);
			document.getElementById('tb'+odinfo.TBNUMBER).appendChild( odDiv );
			document.getElementById('visit'+odinfo.TBNUMBER).innerText = "visit : "+odinfo.TBVISIT;
		}
	}
	
	/* 테이블 결제 기능 */
	let payPopUp;
	function orderPay(tbnumber){
		console.log('결제 완료 처리할 테이블 번호 : ' + tbnumber);
		payPopUp = window.open('payReady?tbnumber='+tbnumber,'payPopUp','width=600, height=400');
		
		/* 테이블 완료 처리 요청 */
		//payTableInfo(tbnumber);

		
	}
	function payTableInfo(tbnumber){
		$.ajax({
			url : "orderPay",
			type : "post",
			data : { "tbnumber" : tbnumber },
			async : false,
			success: function(res){
				/* 해당 테이블 주문내역 초기화 */
				if(Number(res) > 0 ){
					document.getElementById('tb'+tbnumber).innerHTML="";
					document.getElementById('visit'+tbnumber).innerText = "";
				}
			}
		});
		payPopUp.close();
	}
	
	</script>

	<script type="text/javascript">


	
	function connAlert(){
		toastr.options.positionClass = "toast-top-left";
		toastr.options.timeOut = 3000;
		toastr.info('1번 테이블 접속','접속알림');
	}
	function orderAlert(){
		toastr.options.positionClass = "toast-top-left";
		toastr.options.timeOut = 0;
		toastr.error('1번 테이블 주문','주문알림');
	}	
	
	</script>

</body>

</html>








