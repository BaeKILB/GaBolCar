<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!-- 수정중 -->
<!DOCTYPE html>
<html>
<head>
<!-- CSS -->

<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.0.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="stylesheet">


<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/reviewPage2.css">
	
<meta charset="UTF-8">
<title>리뷰 관리 게시판 - 마이페이지(작성글)</title>

</head>
<body>
	<header>
		<jsp:include page="../inc/top1.jsp"></jsp:include>
	</header>
<div class="container">	
	<section id="listForm">
	<h2>리뷰 관리 게시판 - 마이페이지(작성글)</h2>
	<br>
	<table class="table table-hover">
	<thead>
		<tr id="tr_top">
			<th scope="col">별점</th>
			<th scope="col">리뷰번호</th>
			<th scope="col">모델명 / 차량번호</th><!--예약번호 조회해서 차량번호 모델명 들고오기-->
			<th scope="col" width="30%">제목</th>
			<th scope="col">작성자</th>
			<th scope="col">작성날짜</th>
			<th scope="col">관리</th> <!-- 삭제버튼 input으로 넣기 -->
		</tr>
		<thead>
		<tbody>
<%-- 		<c:forEach var="board" items="${boardList }"> --%>
			<tr class="table-active">
				<th scope="row">☆☆☆☆☆</th><!--별점 들어갈 자리-->
				<td>리뷰번호</td>
				<td>모델명 + / +차량번호 </td>
				<td id="subject"> <!-- 제목-->
<%-- 					<a href="BoardDetail.bo?board_num=${board.board_num }&pageNum=${pageNum}">${board.board_subject }</a> --%>
				</td>
				<td>작성자</td>
				<td>
					<fmt:formatDate value="" pattern="yy-MM-dd HH:mm" /> <!-- 작성날짜 --> 
				</td>
				<td>
				<button type="button" class="btn" onclick="">수정</button>
				<button type="button" class="btn" onclick="">삭제</button>
				</td>
			</tr>
			<tr class="table-active">
				<th scope="row">☆☆☆☆☆</th><!--별점 들어갈 자리-->
				<td>리뷰번호</td>
				<td>모델명 + / +차량번호 </td>
				<td > 임의의정보	</td>
				<td>작성자</td>
				<td>
				임의의정보2
				</td>
				<td>
				<button type="button" class="btn" onclick="">수정</button>
				<button type="button" class="btn" onclick="">삭제</button>
				</td>
			</tr>
		  </tbody>	
<%-- 		</c:forEach> --%>
	</table>
	</section>
	<section id="pageList">
		<c:choose>
			<c:when test="${pageNum > 1 }">
				<input type="button" class="btn2" value="이전" onclick="location.href='BoardList.bo?pageNum=${pageNum - 1}'">
			</c:when>
			<c:otherwise>
				<input type="button" class="btn2" value="이전">
			</c:otherwise>
		</c:choose>
		<%-- -------------------------------------- --%>
		<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
			<c:choose>
				<c:when test="${pageNum eq i }">
					${i }
				</c:when>
				<c:otherwise>
					<a href="BoardList.bo?pageNum=${i }">${i }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>		
		<%-- -------------------------------------- --%>
		<c:choose>
			<c:when test="${pageNum < pageInfo.maxPage }">
				<input type="button" value="다음" class="btn2" onclick="location.href='BoardList.bo?pageNum=${pageNum + 1}'">
			</c:when>
			<c:otherwise>
				<input type="button" value="다음" class="btn2">
			</c:otherwise>
		</c:choose>
	</section>
</div>	
<!-- footer 추가 -->
	<footer>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</footer>
	
</body>
</html>













