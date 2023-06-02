<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 수정 중 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>

<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/5p.css" >

</head>
<body>
	<nav>
		<jsp:include page="../inc/top1.jsp"></jsp:include>
	</nav>
	<div class="header" align="center">
		<img alt="" src = "${pageContext.request.contextPath }/resources/img/check.png" width = "150px"/>
  		<h1>예약이 완료 되었습니다</h1>
	</div>

	<hr>

	<div class="res_info">
		<h3>예약정보</h3>
		<ul>
			<li>예약 번호</li>
			<li>차종</li> 
			<li>총 결제 금액</li> 
		</ul>
			자세한 예약내역 조회는 마이페이지 > 예약내역 조회에서 가능합니다.
	</div>
  
  	<hr>

	<div class="payment_info">
		<h3>무통장 입금정보</h3>
		<ul>
			<li>입금은행</li>
			<li>예금주</li>
		</ul>
	</div>

 	 <hr>

	<div class="finish_btn" align="center">
		<button class="btn btn-dark">메인으로</button >
		<button class="btn btn-warning">예약내역조회</button >
	</div>
	
	<jsp:include page="../inc/footer.jsp"></jsp:include>


</body>
</html>