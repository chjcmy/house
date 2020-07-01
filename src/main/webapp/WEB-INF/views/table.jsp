<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>List Customers</title>

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
		<input type="button" value="Add plate"
					onclick ="location.href='add'; return false;" />


		
			<table>
				<tr>
					<th>주제</th>
					<th>소주제</th>
					<th>서문</th>
					<th>날짜</th>
					<th>업데이트</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempplates" items="${plates}">

					<c:url var="updateLink" value="/plate/update">
						<c:param name="plateId" value="${tempplates.id}"/>
					</c:url>


					<tr>
						<td> ${tempplates.kind} </td>
						<td> ${tempplates.kind_think} </td>
						<td> ${tempplates.intro} </td>
						<td> ${tempplates.date} </td>
						<td>
							<a href="${updateLink}">update</a>
						</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>









