<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="styleSheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="styleSheet">	
 	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.0.js"></script>
 	
	<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/6p.css" rel="stylesheet">
	
</head>
<body>
	<header>
		<jsp:include page="../inc/top1.jsp"></jsp:include>
	</header>
	<section id="sec_con" class="inr">
		<h1 class="con_title">차량 소개</h1>
		<!-- 	기본메인페이지 화면은 전체차량으로  -->
		<div class="isbox">
			<dl class="search-type">
				<dt>차종 선택</dt>
				<dd>
					<div class="left-div">
						<label for="selectCarType_0"><input name="selectCarType"
							id="selectCarType_0" type="checkbox" value="경형"
							onchange="Light_Car()">경형</label> <label for="selectCarType_1"><input
							name="selectCarType" id="selectCarType_1" type="checkbox"
							value="준중형">준중형</label> <label for="selectCarType_2"><input
							name="selectCarType" id="selectCarType_2" type="checkbox"
							value="중형">중형</label> <label for="selectCarType_3"><input
							name="selectCarType" id="selectCarType_3" type="checkbox"
							value="대형">대형</label> <label for="selectCarType_4"><input
							name="selectCarType" id="selectCarType_4" type="checkbox"
							value="SUV">SUV</label> <label for="selectCarType_5"><input
							name="selectCarType" id="selectCarType_5" type="checkbox"
							value="전기">전기</label> <label for="selectCarType_6"><input
							name="selectCarType" id="selectCarType_6" type="checkbox"
							value="승합">승합</label> <label for="selectCarType_7"><input
							name="selectCarType" id="selectCarType_7" type="checkbox"
							value="수입">수입</label>

					</div>
				</dd>
			</dl>

			<dl class="search-type">
				<dt>연료 선택</dt>
				<dd>
					<div class="left-div">
						<label for="selectFuel_0"><input name="selectFuel"
							id="selectFuel_0" type="checkbox" value="가솔린">가솔린</label> <label
							for="selectFuel_1"><input name="selectFuel"
							id="selectFuel_1" type="checkbox" value="디젤">디젤</label> <label
							for="selectFuel_2"><input name="selectFuel"
							id="selectFuel_2" type="checkbox" value="LPG">LPG</label> <label
							for="selectFuel_3"><input name="selectFuel"
							id="selectFuel_3" type="checkbox" value="하이브리드">하이브리드</label> <label
							for="selectFuel_4"><input name="selectFuel"
							id="selectFuel_4" type="checkbox" value="전기">전기</label> <label
							for="selectFuel_5"><input name="selectFuel"
							id="selectFuel_5" type="checkbox" value="가솔린+LPG">가솔린+LPG</label>

					</div>
				</dd>
			</dl>
		</div>

		<script type="text/javascript">
			// 체크박스 클릭시 버튼 바꾸기
			$(".left-div > label").on("click", function() {
				$(this).addClass("on");
				if ($(this).children("input[type=checkbox]").is(":checked")) {
					$(this).css({
						"background" : "#ff6600",
						"color" : "#fff",
					});
					$(this).children().attr("checked", true);
					$(this).removeClass("on");
				} else {
					$(this).css({
						"background" : "#fff",
						"color" : "#000"
					});
					$(this).children().attr("checked", false);

				}
			});

			$(".right-div > label").on("click", function() {
				$(this).addClass("on");
				if ($(this).children("input[type=checkbox]").is(":checked")) {
					$(this).css({
						"background" : "#ff6600",
						"color" : "#fff"
					});
					$(this).children().attr("checked", true);
					$(this).removeClass("on");
				} else {
					$(this).css({
						"background" : "#fff",
						"color" : "#000"
					});
					$(this).children().attr("checked", false);
				}
			});
		</script>

		<div class="int_wrap">
			<div class="left-image">
				<!-- 왼쪽 이미지 내용 -->
				<img src="../img/car_img/경형/캐스퍼.png" alt="carImage">
			</div>
			<div class="right-content">
				<div class="name-flex">
					<div class="name1">
						<!-- 이름 내용 -->
						<p>캐스퍼(현대)</p>
					</div>
					<div class="name2">
						<p>경형 / 4인승 / 가솔린
						<p>
					</div>
				</div>
				<div class="table-wrapper">
					<!-- 테이블 내용 -->
					<div class="table">
						<h3>요금정보</h3>
						<table class="custom-table" border="1">
							<tr>
								<th>구분</th>
								<th>주중 대여료</th>
								<th>주말 대여료</th>
							</tr>
							<tr>
								<td>24시간</td>
								<td><span>40,000</span>원</td>
								<td><span>45,000</span>원</td>
							</tr>
							<tr>
								<td>6시간</td>
								<td>38,000원</td>
								<td>43,000원</td>
							</tr>
							<tr>
								<td>1시간</td>
								<td>5,000원</td>
								<td>5,000원</td>
							</tr>
						</table>
					</div>
					<div class="option-div">
						<h3>옵션</h3>
						<div class="custom-div">
							<!-- div 내용 -->
							<span>국제운전면허증가능</span> <span>긴급출동무료</span> <span>충전기제공</span> <span>카시트무료(수량한정)</span>
							<span>금연</span> <span>열선시트</span> <span>스마트키</span> <span>제2운전자등록가능</span>
							<span>네비게이션</span> <span>후방카메라</span> <span>블랙박스</span> <span>블루투스</span>
							<span>USB</span>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="int_wrap">
			<div class="left-image">
				<!-- 왼쪽 이미지 내용 -->
				<img src="../img/car_img/경형/캐스퍼.png" alt="Left Image">
			</div>
			<div class="right-content">
				<div class="name-flex">
					<div class="name1">
						<!-- 이름 내용 -->
						<p>캐스퍼(현대)</p>
					</div>
					<div class="name2">
						<p>경형 / 4인승 / 가솔린
						<p>
					</div>
				</div>
				<div class="table-wrapper">
					<!-- 테이블 내용 -->
					<div class="table">
						<h3>요금정보</h3>
						<table class="custom-table" border="1">
							<tr>
								<th>구분</th>
								<th>주중 대여료</th>
								<th>주말 대여료</th>
							</tr>
							<tr>
								<td>24시간</td>
								<td><span>40,000</span>원</td>
								<td><span>45,000</span>원</td>
							</tr>
							<tr>
								<td>6시간</td>
								<td>38,000원</td>
								<td>43,000원</td>
							</tr>
							<tr>
								<td>1시간</td>
								<td>5,000원</td>
								<td>5,000원</td>
							</tr>
						</table>
					</div>
					<div class="option-div">
						<h3>옵션</h3>
						<div class="custom-div">
							<!-- div 내용 -->
							<span>국제운전면허증가능</span> <span>긴급출동무료</span> <span>충전기제공</span> <span>카시트무료(수량한정)</span>
							<span>금연</span> <span>열선시트</span> <span>스마트키</span> <span>제2운전자등록가능</span>
							<span>네비게이션</span> <span>후방카메라</span> <span>블랙박스</span> <span>블루투스</span>
							<span>USB</span>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<footer>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</footer>
</body>
</html>