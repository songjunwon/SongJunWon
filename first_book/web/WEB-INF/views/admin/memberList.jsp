<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="/firstbook/resources/css/admin/memList.css">

<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	
	<aside>

		<div id="memSearchFormHead" class="inbox"> 회원조회 </div>
		
		<div id="memSearchFormBody" class="inbox">
		<form action="${ pageContext.servletContext.contextPath }/admin/search" method="get">
		
			<table class="memSearchTable">
				
					<c:choose>
					
						<c:when test="${ !empty requestScope.memSearchValue }">
							<tr>
								<td> 

									<select id="memSearchCondition" name="memSearchCondition">
	 
									<option value="memNum" <c:if test="${requestScope.memSearchCondition eq 'memNum' }">selected</c:if>>회원번호</option>
									<option value="name" <c:if test="${requestScope.memSearchCondition eq 'name' }">selected</c:if>>이름</option>
									<option value="email" <c:if test="${requestScope.memSearchCondition eq 'email' }">selected</c:if>>이메일</option>
									<option value="birthDate" <c:if test="${requestScope.memSearchCondition eq 'birthDate' }">selected</c:if> >생년월일</option>
									<option value="enrollDate" <c:if test="${requestScope.memSearchCondition eq 'enrollDate' }">selected</c:if> >가입일시</option>
						
									</select> 
								</td>
								
								<td> <input type="search" id="memSearchValue" name="memSearchValue" value="${requestScope.memSearchValue}"></td>
							</tr>
			
							<tr>	
								<td> <label>블랙리스트 : </label>  </td>
								<td>
			
								<label>Y </label><input type="radio" name="blockCheck">
								<label>N </label><input type="radio" name="blockCheck" checked="checked">
			
								</td>	
							</tr>
							<tr></tr>
						
						
						</c:when>
				
						<c:otherwise>
							<tr>
								<td>
									<select id="memSearchCondition" name="memSearchCondition">
	 
									<option value="memNum">회원번호</option>
									<option value="name">이름</option>
									<option value="email">이메일</option>
									<option value="birthDate">생년월일</option>
									<option value="enrollDate">가입일자</option>
						
									</select> 
								</td>
								
								<td> <input type="search" id="memSearchValue" name="memSearchValue"></td>
							</tr>
			
							<tr>	
								<td> <label>블랙리스트 : </label>  </td>
								<td>
			
								<label>Y </label><input type="radio" name="blockCheck">
								<label>N </label><input type="radio" name="blockCheck" checked="checked">
			
								</td>	
							</tr>
							<tr></tr>
						</c:otherwise>
						
					</c:choose>
				
						
					
				
				<tfoot>
				<tr>	
					<td colspan="2"> <button type="submit" class="btn">검색</button> </td>
						
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
				<td><c:out value="${ mem.memNum }"/></td>
				<td><c:out value="${ mem.memName }"/></td>
				<td><c:out value="${ mem.memId }"/></td>
				<td><c:out value="${ mem.memEmail }"/></td>
				<td><c:out value="${ mem.memBirthDate }"/></td>
				<td><c:out value="${ mem.memWithdrawYn }"/></td>
				<td><c:out value="${ mem.memWithdrawDate }"/></td>
				<td><c:out value="${ mem.memClass }"/></td>
				<td><c:out value="${ mem.memBlockYn }"/></td>
				<td><c:out value="${ mem.memBlockDate }"/></td>
				<td><c:out value="${ mem.memEnrollDate }"/></td>	
			</tr>
		
		</c:forEach>
		</tbody>
	</table>
	</section>
	
	<script type="text/javascript">
		
		const link = "{ pageContext.servletContext.contextPath }/admin/list"
		const searchLink = "{ pageContext.servletContext.contextPath }/admin/search"
		
	</script>
	
	
	
</body>
</html>