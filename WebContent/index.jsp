<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">

<script type="text/javascript">
function clickMe() {
	document.getElementById('button').style.top = Math.floor((Math.random() * 200) + 1) + "px";
	document.getElementById('button').style.left = Math.floor((Math.random() * 200) + 1) + "px";
}
</script> 

</head>
<body>
<h1>AIM TRAINER 100</h1>
<div>
	<button type="button" id="button" onclick="clickMe()">ClickMe!</button>
</div>

</body>
</html>