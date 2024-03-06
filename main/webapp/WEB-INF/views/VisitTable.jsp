<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Visit Table</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
	<style type="text/css">
		/* 태그명칭, ID 속성(#아이디값), CLASS 속성(.클래스값) */
		
		/* id 속성값이 menuListArea 요소를 선택 ( id="menuListArea" ) */
		/* 클래스 속성값이 card 요소를 선택 ( class="card" ) */
		/* 클래스 속성값이 card-body 요소를 선택 ( class="card-body" ) */
		#menuListArea .card .card-body{
			/* 속성 : 속성값; */
			font-size: 20px;
			color:black;
			text-align: center;
		}
		#menuListArea .card .card-header{
			text-align: center;
		}
		/* 메뉴 이름 을 두꺼운 글씨체로 변경  font-weight : 900; */
		#menuListArea .card .card-header img{
			border-radius: 8px;
			width : 100%;
			height : 150px;
			object-fit:contain;
		}
		#menuListArea .card{
			cursor: pointer;
			border-width: 3px;
		}
		#menuListArea .card:hover{
			border-color: #e74a3b;
		}
		.nav-item .menuType{
			padding:10px;
			margin-right:10px;
			margin-left:10px;
			margin-top:5px;
			margin-bottom:5px;
			background-color: white;
			border-radius: 8px;
			cursor: pointer;
			color:black;
			font-weight: bold;
		    text-overflow: ellipsis;
		    white-space: nowrap;
		    overflow: hidden;			
		}
		.selectMenuType{
			background-color: #e74a3b !important;
			color:#ffffff !important;
		}

		#cartListArea{
			min-width: 340px;
			border-left: 3px solid black;
		}
		#cartListArea .card{
			position:sticky;
			top:0;
			height:100vh;
		}
		#cartListArea .card-body{
			overflow: scroll;
		}
		
		#cartListArea div.card div.card-header{
			background-color: #e74a3b;
			color : white;
			text-align: center;
			font-size: 25px;
		}
		
		.cartItem{
			padding : 5px;
			border : 1px solid #e3e6f0;
			border-radius: 7px;
			display: flex;
			align-items: center;
			margin-bottom: 5px;
			margin-top: 5px;
		}
		
		.cartItem .cartItemImg{
			width: 70px;
			margin-right: 7px;
		}
		.cartItem .cartItemImg img{
			width: 100%;
			height: 50px;
			object-fit : contain;
			border-radius: 5px;
		}
		.cartItem .cartItemInfo{
			flex-grow: 1;
		}
		.cartItem .cartItemName{
			color:black;
		}
		
		.cartItemCount{
			display: flex;
			align-items: center;
		}
		
		.card-footer{
			display: flex;
			flex-wrap: wrap;
		}
		
		#cartTotal{
			width: 100%;
			font-weight: 900;
			display: flex;
			font-size: 23px;
		}
		#cartTotalCount{
			color:black;
		}
		#cartTotalPrice{
			text-align:right;
			flex-grow:1;
			color: #e74a3b;
		}
		
		.card-footer .btn-danger{
			flex-grow: 1;
			margin-left: 5px;
		}
		
		.totalPrice{
			color: #e74a3b;
			font-weight: bold;
		}
		.totalCount{
			display:inline-block;
			width:25px;
			text-align: center;
		}
		
		/* 주문내역 */
		#orderListArea .orderItem{
			display: flex;
			align-items: center;
			border: 1px solid #e3e6f0;
    		border-radius: 7px;
    		padding:3px;
		}
		#orderListArea .orderItem .orderItemImg{
			padding: 5px;
    		width: 80px;
		}
		#orderListArea .orderItem .orderItemImg img{
			width: 100%;
		}
		#orderListArea .orderItem .orderItemInfo{
			display: flex;
	   		flex-grow: 1;
	    	padding: 5px;
		}
		#orderListArea .orderItem .orderItemInfo .orderItemName{
		    color: black;
		}		
		#orderListArea .orderItem .orderItemInfo .orderTotalPrice{
			flex-grow: 1;
		    text-align: right;
		    color: #e74a3b;
		}
		
	</style>

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

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fa-solid fa-utensils"></i>
                </div>
                <div class="sidebar-brand-text mx-3">${sessionScope.tbnumber }번 TABLE</div>
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
                주문가능메뉴
            </div>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <div class="menuType selectMenuType" onclick="getMenuListAll(this)" >
                    <i class="fa-solid fa-clipboard"></i>
                    <span>전체메뉴</span>
                </div>
            </li>            
            
            <li class="nav-item">
                <div class="menuType" onclick="getMenuListType(this,'PI')" >
                    <i class="fa-solid fa-pizza-slice"></i>
                    <span>피자류</span>
                </div>
            </li>
            
            <li class="nav-item">
                <div class="menuType" onclick="getMenuListType(this,'NU')">
                    <i class="fa-solid fa-bacon"></i>
                    <span>면류</span>
                </div>
            </li>                    
                
            <li class="nav-item">
                <div class="menuType" onclick="getMenuListType(this,'BR')" >
                    <i class="fa-solid fa-bread-slice"></i>
                    <span>빵류</span>
                </div>
            </li>
              
            <li class="nav-item">
                <div class="menuType" onclick="getMenuListType(this,'IC')">
                    <i class="fa-solid fa-ice-cream"></i>
                    <span>아이스크림</span>
                </div>
            </li>

            <li class="nav-item">
                <div class="menuType" onclick="getMenuListType(this,'DS')">
                    <i class="fa-solid fa-cookie"></i>
                    <span>디저트</span>
                </div>
            </li> 

            <li class="nav-item">
                <div class="menuType" onclick="getMenuListType(this,'DR')">
                    <i class="fa-solid fa-glass-water"></i>
                    <span>음료</span>
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
	                        	<button class="btn btn-danger" style="min-width: 80px; margin-right:5px;" data-toggle="modal" data-target="#orderListModal" 
	                        		    onclick="getOrderList('${sessionScope.tbnumber}','${tbvisit }')">주문내역</button>
	                            <button class="btn btn-dark" style="min-width: 80px;" onclick="toggleCart()">장바구니</button>
	                        </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
					<div class="d-sm-flex align-items-center justify-content-between mb-2">
						<div class="mb-0 bg-danger rounded py-2 px-4" style="min-width:160px; height:70px;">
							<div class="text-white" style="font-size: 20px;" id="selMenuType"> </div>
							<div class="text-white-50" id="selMenuCount"> </div>
						</div>
					</div>

					<!-- 조회된 메뉴 목록 출력 -->
                    <div class="row" id="menuListArea">
						
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

		<div id="cartListArea" class="d-none">
			
			<div class="card p-3">
				
				<div class="card-header">
					장바구니 ( <span id="tbnumber">${sessionScope.tbnumber }</span> 번 테이블 )
				</div>
				
				<div class="card-body p-1">
					
					<!-- 장바구니에 담긴 메뉴 출력 -->

				</div>
				
				<div class="card-footer p-2">
					<div id="cartTotal"> 
						<div id="cartTotalCount"></div> 
						<div id="cartTotalPrice"></div>
					</div>
					
					<button class="btn btn-dark" onclick="closeCart()">닫기</button>
					<button class="btn btn-danger" onclick="orders('${sessionScope.tbnumber}','${tbvisit}')">주문하기</button>
				</div>
			
			</div>
			
		</div>

    </div>
    <!-- End of Page Wrapper -->



    <!-- 주문내역 출력-->
    <div class="modal fade" id="orderListModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-danger" id="exampleModalLabel"> 주문내역 </h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>

				<div class="modal-body" id="orderListArea">

					<div class="orderItem" >
						<div class="orderItemImg">
							<img alt="메뉴이미지" src="http://www.shakeshack.kr/resources/images/menu/burger_smokeshack.jpg">
						</div>

						<div class="orderItemInfo">
							<div class="orderItemName">
								메뉴이름 (1개당가격 * 주문수)
							</div>
							
							<div class="orderTotalPrice">
								 합산가격 원
							</div>
						</div>
					</div>


				</div>

				<div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">닫기</button>
                    <!-- <a class="btn btn-primary" href="login.html">Logout</a> -->
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
    
    <!-- 메뉴 및 주문 기능 SCRIPT -->
	<script type="text/javascript">
	
	/* $(document).ready( function(){} ) */
		$(document).ready( function(){ // 문서가 준비 되면 실행
			getMenuListAll();
		});
	
		/* 메뉴 목록 조회 요청 전송 - AJAX (JQUERY) */
		function getMenuListAll(selObj){
			
			const menuTypeList = document.querySelectorAll('.nav-item .menuType');
			let typeName = '전체메뉴';
			if(selObj != undefined){
				/* 클릭된 메뉴 종류 태그에 selectMenuType클래스 값 추가 */
				/* 모든 메뉴 종류 태그에서  selectMenuType클래스 값 삭제*/
				for(let typeLi of menuTypeList){
					typeLi.classList.remove('selectMenuType');
				}
				selObj.classList.add('selectMenuType');	
				
				typeName = selObj.querySelector('span').innerText;
			}
			
			
			
			
			console.log('getMenuListAll() - 전체 메뉴 목록 조회 요청');
			$.ajax({
				url : 'getMenuList',
				type : 'post',
				dataType : 'json',
				async : false,
				success : function(res){
					/* res - 메뉴 목록 데이터 */
					printMenuList(res); // 메뉴를 출력 기능 호출
					
					selectMenuType( typeName,res.length);
				}
			});
		}
		
		function getMenuListType(selObj, menuType){
			console.log('getMenuListType() - 종류 별 목록 조회 요청');
			/* 사이드 바에 있는 모든 메뉴종류태그 선택 */
			const menuTypeList = document.querySelectorAll('.nav-item .menuType');
			/* 모든 메뉴 종류 태그에서  selectMenuType클래스 값 삭제*/
			for(let typeLi of menuTypeList){
				typeLi.classList.remove('selectMenuType');
			}
			/* 클릭된 메뉴 종류 태그에 selectMenuType클래스 값 추가 */
			selObj.classList.add('selectMenuType');
			
			let typeName = selObj.querySelector('span').innerText;
			
			$.ajax({
				url : 'getMenuList_Type',
				type : 'post',
				dataType : 'json',
				data : { 'menuType' : menuType },
				async : false,
				success : function(res){
					/* res - 메뉴 목록 데이터 */
					printMenuList(res); // 메뉴를 출력 기능 호출
					selectMenuType( typeName,res.length);
				}
			});			
		}
		
		function selectMenuType(typeName, typeCount){
			document.getElementById('selMenuType').innerText = typeName;
			document.getElementById('selMenuCount').innerText = typeCount+"종류 주문가능";
			
		}
		
		function getMenuListSearch(){
			console.log('getMenuListSearch() - 메뉴이름 검색 목록 조회 요청');
			// 검색어 입력 input 태그 선택
			const searchInput = document.getElementById('searchName');
			
			$.ajax({
				url : 'getMenuList_search',
				type : 'post',
				dataType : 'json',
				data : { 'searchName' : searchInput.value },
				async : false,
				success : function(res){
					/* res - 메뉴 목록 데이터 */
					printMenuList(res); // 메뉴를 출력 기능 호출
				}
			});				
		}
		
		/* 메뉴 리스트 데이터를 화면에 출력 하는 기능 */
		function printMenuList(menuList){
			console.log('printMenuList() - 메뉴 출력 기능');
			// 메뉴를 출력할 요소 선택
			const menuListArea = document.getElementById('menuListArea');
			menuListArea.innerHTML = ""; // 현재 출력중인 메뉴 삭제
			
			for(let mn of menuList){
				let imgUrl = mn.mnimg;
				if(imgUrl == undefined){
					imgUrl = 'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.shutterstock.com%2Fshutterstock%2Fphotos%2F1737334631%2Fdisplay_1500%2Fstock-vector-image-not-found-grayscale-image-photo-1737334631.jpg&type=sc960_832';
				}
				let menuDIV = document.createElement('div');
				menuDIV.classList.add( 'col-lg-6' ,'col-xl-4', 'mb-4');
				
				let cardDIV = document.createElement('div');
				cardDIV.classList.add('card','shadow');
				cardDIV.addEventListener('click', function(){ 
					selectMenu(mn);
				} );
				
				cardDIV.innerHTML = `
										<div class="card-header p-2">
											<img src="\${imgUrl}">
										</div>
				 						<div class="card-body p-2">
											<div>\${mn.mnname}</div> 
											<div>\${mn.mnprice}원</div>
										</div>
				 					 `; 
				menuDIV.appendChild(cardDIV);
				 					 
				menuListArea.appendChild(menuDIV);
			}
		}
		
		function selectMenu(menuInfo){
			console.log('메뉴 선택! 장바구니 이동 기능 호출');
			console.log('선택한 메뉴 이름 : ' + menuInfo.mnname);
			console.log('선택한 메뉴 가격 : ' + menuInfo.mnprice);
			console.log('선택한 메뉴 코드 : ' + menuInfo.mncode);
			console.log('선택한 메뉴 이미지 : ' + menuInfo.mnimg);
			/* 숨겨진 장바구니 영역 보이게 수정 */
			// 1. 장바구니 영역(DIV 요소) 선택
			const cartListArea = document.getElementById('cartListArea');
			// 2. 선택한 요소의 d-none 클래스 속성값을 제거
			cartListArea.classList.remove('d-none');
			
			/* 선택한 메뉴를 장바구니의  BODY 선택 */
			const cartBodyDiv = cartListArea.querySelector('.card-body');
			
			let cartItemCheck = cartBodyDiv.querySelector('#'+menuInfo.mncode);
			if(cartItemCheck != null){
				console.log('장바구니 담겨 있는 메뉴');
				/* 장바구니에 담겨 있던 메뉴의 가격을 증가, 수량을 1 증가 */
				/* 현재 장바구니에 : [소금빵 1개 10000원] >> 소금빵 2개 20000원 */
				let itemCountSpan = cartItemCheck.querySelector('span.totalCount');
				let itemCountVal = Number( itemCountSpan.innerText );
				console.log("현재 장바구니 메뉴의 수량 : " + itemCountVal);
				if(itemCountVal >= 9){
					return;
				}
				
				itemCountSpan.innerText = (itemCountVal + 1);
				let itemPriceSpan =  cartItemCheck.querySelector('span.totalPrice');
				let itemPriceVal = Number( itemPriceSpan.innerText.replace('원','') );
				console.log('현재 장바구니 메뉴의 가격 : ' + itemPriceVal);
				console.log('장바구니 변경 가격 : ' +( itemPriceVal + Number(menuInfo.mnprice) )+ "원" );
				itemPriceSpan.innerText = ( itemPriceVal + Number(menuInfo.mnprice) )+ "원";
			
			} else {
				console.log('장바구니에 없는 메뉴');
				let cartItemDiv = document.createElement('div');
				cartItemDiv.classList.add('cartItem');
				cartItemDiv.setAttribute('id', menuInfo.mncode);
				cartItemDiv.innerHTML = `						
								<div class="cartItemImg">
									<img alt="" src="\${menuInfo.mnimg}">
								</div>
					
								<div class="cartItemInfo">
									<div class="cartItemName">
										\${menuInfo.mnname}
									</div>
									<div class="cartItemCount">
									
										<span class="totalPrice">\${menuInfo.mnprice}원</span>
							   			
										<div style="flex-grow:1; text-align:right;">
											<i class="fa-solid fa-minus btn btn-dark p-1" onclick="minusItem(this,'\${menuInfo.mnprice}')"></i>
											<span class="totalCount"> 1 </span>
											<i class="fa-solid fa-plus btn btn-dark p-1" onclick="plusItem(this,'\${menuInfo.mnprice}')" ></i>
											<button class="btn btn-sm btn-dark" onclick="deleteCartItem('\${menuInfo.mncode}')">삭제</button>
										</div>
									</div>
								</div>`;
				
				cartBodyDiv.appendChild(cartItemDiv);
			}
			
			cartTotalInfo();// 장바구니 종합 정보 갱신
		}
		
		/* 장바구니 닫기 */
		function closeCart(){
			const cartListArea = document.getElementById('cartListArea');
			cartListArea.classList.add('d-none');
		}
		/* 장바구니 열기/닫기 */
		function toggleCart(){
			const cartListArea = document.getElementById('cartListArea');
			cartListArea.classList.toggle('d-none');
			
		}
		
		/* 장바구니에 담긴 메뉴 삭제 */
		function deleteCartItem(delId){
			document.getElementById(delId).remove();
			cartTotalInfo();// 장바구니 종합 정보 갱신
		}
		
		/* 장바구니에 마이너스 버튼 클릭 */
		function minusItem(clickObj, menuprice){
			console.log('마이너스 버튼 클릭');
			let cartItemCountDiv = clickObj.parentElement.parentElement;
			
			let itemCountSpan = cartItemCountDiv.querySelector('span.totalCount');
			let itemCountVal = Number( itemCountSpan.innerText );
			console.log("현재 출력중인 수량 : " + itemCountVal);
			if(itemCountVal <= 1){
				return;
			}
			itemCountSpan.innerText = (itemCountVal - 1); 
			
			let itemPriceSpan = cartItemCountDiv.querySelector('span.totalPrice');
			let itemPriceVal = itemPriceSpan.innerText.replace('원','');
			console.log("현재 출력중인 가격 : " + itemPriceVal);
			itemPriceSpan.innerText = ( Number(itemPriceVal) - Number(menuprice) ) +"원";
			
			cartTotalInfo();// 장바구니 종합 정보 갱신
			
		}
		
		function plusItem(clickObj, menuprice){
			console.log('플러스 버튼 클릭');
			let cartItemCountDiv = clickObj.parentElement.parentElement;
			
			let itemCountSpan = cartItemCountDiv.querySelector('span.totalCount');
			let itemCountVal = Number( itemCountSpan.innerText );
			console.log("현재 출력중인 수량 : " + itemCountVal);
			if(itemCountVal >= 9 ){
				return;
			}
			itemCountSpan.innerText = (itemCountVal + 1); 
			
			let itemPriceSpan = cartItemCountDiv.querySelector('span.totalPrice');
			let itemPriceVal = itemPriceSpan.innerText.replace('원','');
			console.log("현재 출력중인 가격 : " + itemPriceVal);
			itemPriceSpan.innerText = ( Number(itemPriceVal) + Number(menuprice) ) +"원";
			
			cartTotalInfo();// 장바구니 종합 정보 갱신
		}		

		/* 장바구니 메뉴 정보 총합 */
		function cartTotalInfo(){
			/* 장바구니에 담긴 메뉴의 몇 종류 몇개 (주문수) 요소 선택 */
			const cartTotalCountDiv = document.getElementById('cartTotalCount');
			/* 장바구니에 담긴 메뉴의 주문 총액 요소 선택 */
			const cartTotalPriceDiv = document.getElementById('cartTotalPrice');
			
			/* 1. 장바구니에 안에 담긴 메뉴정보 요소들을 선택  ( querySelectAll('선택자') )  */
			const cartMenus = document.querySelectorAll('#cartListArea div.cartItem');
			let cartMenuLength = cartMenus.length;
			console.log('장바구니에 담긴 메뉴 수 : ' + cartMenuLength);
			if(cartMenuLength < 1){
				cartTotalCountDiv.innerText = "";
				cartTotalPriceDiv.innerText = "";
				return;
			}
			
			/* 2. 각각 요소의 가격 정보와, 수량 정보를 총합 */
			let sumPrice = 0; // 총액을 저장할 변수
			let sumCount = 0; // 총 주문수를 저장할 변수
			for(let cartMenu of cartMenus){
				// cartMenu == <div class="cartItem"> ..... </div>
				let itemCountSpan = cartMenu.querySelector('span.totalCount');
				let itemCountVal = Number( itemCountSpan.innerText ); // 수량
				sumCount += itemCountVal;
				
				let itemPriceSpan = cartMenu.querySelector('span.totalPrice');
				let itemPriceVal = Number( itemPriceSpan.innerText.replace('원','') );
				sumPrice += itemPriceVal;
			}

			
			cartTotalCountDiv.innerText = cartMenuLength+"가지 "+ sumCount+"개";
			cartTotalPriceDiv.innerText = sumPrice + "원";
		}

		function orders(tbnumber, tbvisit){
			/* 장바구니에 담긴 메뉴들 주문 요청 */
			console.log('장바구니에 담긴 메뉴들 주문 요청');
			
			/* 1. 장바구니에 안에 담긴 메뉴정보 요소들을 선택  ( querySelectAll('선택자') )  */
			const cartMenus = document.querySelectorAll('#cartListArea div.cartItem');
			let cartMenuLength = cartMenus.length;
			if(cartMenuLength < 1){
				alert('장바구니에 메뉴를 추가해주세요!');
				
			} else {
				let orderData = []; // 주문 요청에 전송한 데이터
				for(let cartMenu of cartMenus){
					let mncode = cartMenu.getAttribute('id');
					
					let itemCountSpan = cartMenu.querySelector('span.totalCount');
					let odcount = Number( itemCountSpan.innerText );
					
					let od = {  'mncode' : mncode, 
								'odcount' : odcount , 
								'tbnumber' : tbnumber , 
								'tbvisit' : tbvisit };
					orderData.push(od);
				}
				console.log(orderData);
				/* Controller 주문 요청 전송 - ajax */
				$.ajax({ 
					type : 'post',
					url : 'orderSubmit',
					data : JSON.stringify(orderData),
					contentType : 'application/json',
					success : function(res){
						console.log('주문 결과 : '+res);
						if(res == 'Y'){
							alert('주문되었습니다.');
							/* 장바구니에 담긴 메뉴 목록 초기화 */
							document.querySelector('#cartListArea > div.card > div.card-body').innerHTML = "";
							cartTotalInfo();// 장바구니 종합 정보 갱신
							
							/* 주문내역 확인 기능 호출 */
							
							/* 관리자 페이지에 메시지 전송 */
							/* 1_1 : tbnumber +"_"+tbvisit */
							let msgObj = { "tbnumber":tbnumber, "tbvisit":tbvisit  };
							sock.send( JSON.stringify( msgObj ) );
							
							
						} else {
							alert('주문 처리에 실패하였습니다.\n다시 주문해주세요!');
						}
						
					}
				})
				
			}
			
		}

	</script>    
	
	<!-- 주문내역 조회 -->
	<script type="text/javascript">
		function getOrderList(tbnumber, tbvisit){
			console.log('주문 내역 조회 요청');
			/* AJAX 주문내역 조회 */
			$.ajax({
				url : "getOrderList_table",
				type : "post",
				data : { "tbnumber" : tbnumber,  "tbvisit" : tbvisit },
				dataType : "json",
				async : false,
				success : function(res){
					/* 조회된 주문내역 출력 기능 호출 */
					printOrderList(res);
				}
			});		
		}
		
		function printOrderList(odList){
			console.log('주문내역 출력!');
			// 주문내역을 출력할 요소 선택
			console.log(odList);
			const orderListArea = document.getElementById('orderListArea');
				
		}
	</script>
	
	

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
		 
		     location.href="/";
		     //sock.close();
		 };
	
		 sock.onclose = function() { // 접속이 해제 되면 실행
		     console.log('close');
		 	 alert('접속이 해제 되었습니다!');
		 	 location.href="/";
		 };
	</script>


</body>

</html>








