<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/jquery/jquery-3.6.0.js"></script>
<script>
$(function(){
	$("#create").click(function(){
		var vo = {
				name: "둘리",
				email: "dooly@gmail.com",
				password: "1234",
				gender: "male"
		};
		$.ajax({
			url: "${pageContext.request.contextPath}/api/user",
			type: "post",
			dataType: "json",
			contentType: "application/json",
			data: JSON.stringify(vo),
			success: function(response){
				console.log(response);
			}
		});
	});
	
	$("#read").click(function(){
		$.ajax({
			url: "${pageContext.request.contextPath}/api/10",
			type: "put",
			dataType: "json",
			contentType :  "application/json",
			data: JSON.stringify(vo),
			success: function(response){
				console.log(response);
			}
	});
		$("#update").click(function(){
			
		});
});
</script>
</head>
<body>

<h1>AJAX Test: Restful API</h1>
<button id="create">Create(post)</button>
<br>
<button id="read">read(post)</button>
<br>
<button id="update">update(post)</button>
<br>
<button id="delete">delete(post)</button>
<br>
</body>
</html>