<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TaBolCar</title>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.0.js"></script>

<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="styleSheet">
<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="styleSheet">

<link href="${pageContext.request.contextPath }/resources/css/inc/flatpickr.min.css" rel="styleSheet">
<script src="${pageContext.request.contextPath }/resources/js/inc/flatpickr.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/inc/calender.css" rel="styleSheet">

<link href="${pageContext.request.contextPath }/resources/css/inc/rentMenu.css" rel="stylesheet">

<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
</head>

<body>	
<nav>
		<jsp:include page="inc/top1.jsp"></jsp:include>
	</nav>
	<div class="main_img_wrap">
		<img class=" main_car_img" alt="car_image" src="img/car_image.jpg">
	</div>


	<!-- 컨테이너 자체를 가운데 정렬 하고싶으면 mx-auto 사용 !!  -->
	<main class=" px-0 mx-auto">
		<form action="carRes" method="get" onsubmit="return menuCheck()">
			<div class=" ">
<!-- 			col-2 offset-md-3 offset-lg-5 offset-xl-6 offset-xxl-5  -->
				<div class="main_wrap">
					<div class="cal_wrap ">
						<jsp:include page="inc/calender.jsp"></jsp:include>
					</div>
					<div class=" rentMenu_wrap ">
						<jsp:include page="inc/rentMenu.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</form>
	</main>

	<!-- 부트스트랩 그리드를 사용하여 컨텐츠 위치 설정
	1. 맨 앞 태그 class 부분에
	container 또는 container-fluid 를 넣기 (container-fluid는 width 가 항상 100%)
	
	2. 다음 태그 class 부분에 row 를 넣어
	이 태그 안쪽부분을 행으로 쓸것이다 선언
	
	3. 다음 태그에  col-n(1~12) 를 넣어 차지할 공간을 설정함
	
	# offset-n(1~11) 를 넣어 일정 크기만큼 띄워줄수 있으며
	order-n 등등 다양한 그리드 관련 클래스를 사용할 수 있음
		 -->


<!--  고객 리뷰 구역 !  -->
	<article class="container-fluid mx-auto review_wrap">
		<div class="row">
			<div class="col-3  review_title">고객리뷰</div>
			<input type="button" class="offset-sm-6  offset-lg-8  offset-md-7 col-1 btn btn-outline-warning review_list_btn" value="더보기">
		</div>
		<div class="row align-items-center review_list_wrap">
			<!--	리뷰 컨텐츠들을 가로 세로 전부 중앙에 오도록 설정하기
		
			d-flex : display:flex 와 동일한 동작 
				- 현 요소가 col 을 설정하고 있을시
				 css 에 display:flex를 넣어도 동작을 하지 않음
				 따라서 d-flex 로 지정하여 사용
				 flex box 의 설정값들도 css 가 아닌 부트스트랩을 사용해서 지정해야함 	
		align-items-center :  align-items:center 와 동일
		justify-content-center : justify-content:center 와 동일  -->
		
		<c:forEach var="i" begin="1" end="4">
			
		</c:forEach>
			<div class="mt-2 col-2 offset-1 d-flex align-items-center justify-content-center ">
				<div class="review-wrap1">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름</span>
					<div class="review-content"><p>리뷰내용 21313</p></div>
				</div>
			</div>
			<div class="mt-2 col-2 offset-1 d-flex align-items-center justify-content-center">
				<div class="review-wrap2">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름2</span>
					<div  class="review-content"><p>리뷰내용 21313</p></div>

				</div>
			</div>
			<div class="mt-2 col-2 offset-1 d-flex align-items-center justify-content-center review-wrap3">
				<div class="">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름3</span>
					<div  class="review-content"><p>리뷰내용 21313</p></div>
				</div>
			</div>
			<div class="mt-2 col-2 offset-1 d-flex align-items-center justify-content-center review-wrap4">
				<div class="">
					<span class="review-star">5.0</span> <span class="review-car-name">차량이름3</span>
					<div  class="review-content"><p>리뷰내용 21313</p></div>
				</div>
			</div>
		</div>
	</article>



<!-- QnA 구역 ! -->
	<article class="container-fluid mx-auto qna_wrap ">

		<div class="row qna_title_wrap">
			<div class="col-sm-4 col-md-3 qna_title">자주 묻는 질문</div>
			<input class="offset-sm-4 offset-md-7 offset-lg-8 col-1 btn btn-outline-warning qna_title_btn" type="button"
				value="더보기">
		</div>

		<div class="row align-items-center qna_list_wrap">

			<div>
				<a href="#" class="col-sm-5  col-md-4 col-xl-3 offset-1">Q. 카시트 등 부가서비스는 어떻게 이용하나요?</a> <input
					type="button" value="▶"
					class=" btn btn-outline-warning col-1 offset-xs-1 offset-sm-2 offset-md-5 offset-xl-6 btn_typeB2 qna_btn">
			</div>
			<div>
				<a href="#" class="col-sm-5 col-md-4 col-xl-3 offset-1">Q. 해외에 거주하고 있는데 예약 및 이용이 ...</a>
				<input type="button" value="▶"
					class="btn btn-outline-warning col-1 offset-xs-1 offset-sm-2 offset-md-5 offset-xl-6 btn_typeB2 qna_btn">
			</div>
			<div>
				<a href="#" class="col-sm-5 col-md-4 col-xl-3 offset-1">Q. 사고 또는 고장 발생시 어떻게 해야하나요?</a> <input
					type="button" value="▶"
					class="btn btn-outline-warning col-1 offset-xs-1 offset-sm-2 offset-md-5 offset-xl-6 btn_typeB2 qna_btn">
			</div>

		</div>
	</article>


	<jsp:include page="inc/footer.jsp"></jsp:include>
		


</body>
</html>