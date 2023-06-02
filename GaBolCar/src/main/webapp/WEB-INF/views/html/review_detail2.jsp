<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<!-- <link href="css/default.css" rel="stylesheet" type="text/css"> -->
<link href="${pageContext.request.contextPath }/resources/css/inc/top.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc/footer.css" rel="stylesheet">

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.0.js"></script>

<style type="text/css">
	

	article h1, h3 {
		text-align: center;
		text-decoration: none;
	}

	body {
		max-width:1400px;
		font-family: Arial;
		margin: 0 auto;
	}	
		
	h2 {
		text-align: center;
	}
	
	
	table {
		border: 1px solid black;
		border-collapse: collapse; 
	 	width: 500px;
	 	margin: auto;
	}
	
	th {
		text-align: center;
		background-color: orange;
	}
	
	td {
		width: 150px;
		text-align: center;
	}

	.star_Point{
		line-height : 50px;
	    float: right;
	    text-align: center;
		width: 200px;
		height: 50px;
		background-color: white;
		margin-top : -16px;
		margin-right : 20px;
		border-radius: 20px 20px 20px 20px;
		border : solid orange;
	}

	#articleForm {
		width: 500px;
		height: 630px;
		border: 1px solid red;
		margin: auto;
	}	
	
	#basicInfoArea {
		height: 70px;
		text-align: center;
	}
	
	#articleContentArea {
		background: white;
		margin-top: 28px;
		height: 450px;
		text-align: center;
		overflow: auto;
		white-space: pre-line;	
		border-bottom: solid orange;
	}
	
	#commandList {
		margin: auto;
		width: 500px;
		text-align: center;
	}
	
	
	
</style>
</head>
<body>
	<header>
		<jsp:include page="../inc/top1.jsp"></jsp:include>
	</header>
	<!-- 게시판 상세내용 보기 -->
	<section id="articleForm">
		<h2>리뷰 내용</h2>
		<section id="basicInfoArea">
			<table border="1">
				<tr>
					<th width="70">작성자</th>
					<td>${board.board_name }</td>
					<th width="70">작성날짜</th>
					<td><fmt:formatDate value="${board.board_date }" pattern="yyyy-MM-dd HH:mm" /></td>
				</tr>
				<tr>
					<th width="70">모델명</th>
					<td></td>
					<th width="70">차량번호</th>
					<td></td>
				</tr>
				<tr>
					<th width="70">첨부파일</th>
					<td colspan="3" ><a href="upload/${board.board_real_file }" download=${board.board_file }> ${board.board_file }</a></td>
				</tr>
			</table>
		</section>
		<section id="articleContentArea">
		<div class ="star_Point">5.0 &ensp; ★★★★★</div><%--배경 흰색으로, 주황색별 --%>
		<br>
		<hr>
		<div class = "review_content">완전 친절 그 자체~
일찍 도착하고 일찍 돌아가야하는데도 불구하고 원래 시간보다 일찍 와주셔서 너무 감사합니당
차량도 깨끗하구 쾌적했어요!!
담에 또 이용할게용${board.board_content }</div>
		
		</section>
		
	</section>
	<section id="commandList">
		<input type="button" value="삭제" onclick="confirmDelete()">
		<input type="button" value="목록" onclick="location.href='BoardList.bo?pageNum=${param.pageNum}'">
	</section>
	    <footer>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</footer>
    <script>
      function confirmDelete() {
        if (window.confirm("정말 삭제하시겠습니까?")) {
        	console.log("삭제 커맨드 입력");
        } else {
          console.log("취소");
        }
      }
    </script>
</body>
</html>
















