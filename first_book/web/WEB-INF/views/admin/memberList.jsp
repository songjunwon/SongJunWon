<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
	section { margin-top: 85px; margin-left : 50px; }
	
	section table {	 text-align : center; border-collapse: collapse; border-spacing: 0; border: 1px solid #444444;}	
	section table thead { background-color: red; color : white; }
	section table thead>tr>th { height : 40px; width: 100px;	}
	section table tbody>tr:nth-child(odd) { background-color: #CFCFCF; }
	
	
	aside { float:right; margin-top: 85px; margin-right : 50px; height : 600px; width : 400px; border: 1px solid #444444;}
	
	.inbox { display: -webkit-box; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-box-align: center; 
        -moz-box-align: center; -ms-flex-align: center; align-items: center; /* 수직 정렬 */
        -webkit-box-pack: center; -moz-box-pack: center; -ms-flex-pack: center; justify-content: center; /* 수평 정렬 */ }
	
	#memSearchFormHead { font-size : 20px; text-align : center; background-color: red;
		color : white; width : 400px; height: 50px; }
		
	#memSearchFormBody { margin-top: 20px; }
	
	.memSearchTable { margin-top : 15px; text-align: center; border-spacing: 30px;}
	
	.btn { font-size : 20px; border : 0px; outline : 0px; color : white; background-color: red; width: 200px;}
	.btn:hover { background-color: #333333; color: white;}
	
</style>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<aside>

		<div id="memSearchFormHead" class="inbox"> 회원조회 </div>
		
		<div id="memSearchFormBody" class="inbox">
		<form action="">
		
			<table class="memSearchTable">
				<tr>
					<td> <label>회원번호 : </label> </td>
					<td> <input type="text"></td>
				</tr>

				<tr>	
					<td> <label>회원코드 : </label> </td>	
					<td><input type="text"></td>
				</tr>

				<tr>	
					<td> <label>회원명 : </label> </td>
					<td><input type="text"></td>	
				</tr>

				<tr>	
					<td> <label>생년월일 : </label>  </td>
					<td><input type="text"></td>	
				</tr>

				<tr>	
					<td> <label>이메일 : </label>  </td>
					<td> <input type="text"></td>	
				</tr>

				<tr>	
					<td> <label>가입일시 : </label>  </td>
					<td><input type="text"></td>	
				</tr>

				<tr>	
					<td> <label>블랙리스트 : </label>  </td>
					<td>

					<label>Y </label><input type="radio" name="blockCheck">
					<label>N </label><input type="radio" name="blockCheck">

					</td>	
				</tr>
				<tr></tr>
				<tfoot>
				<tr>	
					<td colspan="2"> <button type="button" class="btn">검색</button> </td>
						
				</tr>
				</tfoot>
			
			</table>
	
		</form>
		</div>

		

		
	</aside>
	
	
	<section>
		
	
	<table class="memList">
		
		<thead>
		<tr> 
			<th>회원번호</th>
			<th>회원이름</th>
			<th>아이디</th>
			<th>회원이메일</th>
			<th>회원생년월일</th>
			<th>탈퇴여부</th>
			<th>탈퇴일자</th>
			<th>회원분류</th>
			<th>차단여부</th>
			<th>차단일자</th>
			<th>가입일자</th>
			
		</tr>
		</thead>
		
		<tbody>
		<c:forEach var="mem" items="${ requestScope.memList }">	
		
			<tr>
				<td>${ mem.memNum }</td>
				<td>${ mem.memName }</td>
				<td>${ mem.memId }</td>
				<td>${ mem.memEmail }</td>
				<td>${ mem.memBirthDate }</td>
				<td>${ mem.memWithdrawYn }</td>
				<td>${ mem.memWithdrawDate }</td>
				<td>${ mem.memClass }</td>
				<td>${ mem.memBlockYn }</td>
				<td>${ mem.memBlockDate }</td>
				<td>${ mem.memEnrollDate }</td>	
			</tr>
		
		</c:forEach>
		</tbody>
	</table>
	</section>

	
</body>
</html>