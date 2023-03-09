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
// DOM Load Event
// 1. load : DOM, CSSOM, Image 모두 다 로딩
// 2. DOMContent Loaded : DOM만 로딩
window.addEventListener("DOMContentLoaded", function(){
	document
	.getElementsByTagName("button")[0]
	.addEventListener("click",function(){
		var xhr;
		if(window.ActiveXObject){	// <= IE8
			xhr = new ActiveXObject("Microsoft.XMLHTTP")
		}else if(window.XMLHttpRequest) {						// Other Standard Browser
			xhr = new XMLHttpRequest();
		} else {
			console.log('AJAX 기능을 사용할 수 없습니다.');
			return;
		}
		xhr.addEventListener('readStateChange', function(){
			if(this.readyState ==XMLHttpRequeest.UNSENT){
			
			} else if(this.readyState == XMLHttpRequest.OPENED){
				
			} else if(this.readyState == XMLHttpRequest.HEADERS_RECEIVED){
				
			} else if(this.readyState == XMLHttpRequest.LOADING){
				
			} else if(this.readyState == XMLHttpRequest.DONE){
				console.log("State: DONE");
				if(this.status != 200){
					console.error(this.state);
					return;
				}
				
				console.log(this.responseText, typeof(this.responseText));
				var response = JSON.parse(response.text);
			}
		});
		xhr.open("get","${pageContext.request.contextPath}/api/json")
		xhr.send();
	});
});
</script>
</head>
<body>
	<h1>AJAX Test: JSON Format Data: XMLHttpRequest 객체를 직접 사용하기</h1>
	<button id="">데이터 가져오기</button>
	<div id="data"></div>
</body>
</html>