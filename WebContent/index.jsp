<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">

<script type="text/javascript">
var a=100;
var c=0;

function start()
{
	document.getElementById("button").style.visibility = "visible";
	document.getElementById('button').style.top = (window.innerHeight/2 - 100) + "px";
	document.getElementById('button').style.left = (window.innerWidth/2 - 100) + "px";
	document.getElementById('button').style.width=100+"px";
	document.getElementById('button').style.height=100+"px";
	
	var time = 30,
    display = document.querySelector('#time');
	startTimer(time, display);
}

function clickMe() {
	document.getElementById('button').style.top = Math.floor((Math.random() * (window.innerHeight-100)) + 1) + "px";
	document.getElementById('button').style.left = Math.floor((Math.random() * (window.innerWidth-100)) + 1) + "px";
	
	document.getElementById('button').style.width=(a-1)+"px";
	document.getElementById('button').style.height=(a-1)+"px";
	a=a-10;
	if (a<=30) {
		a=30;
	}
	
	c=c+1;
	document.getElementById("count").innerHTML="Counter: "+c;
	
	
}

function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = "00:" + seconds;
		if(timer == 0) {
			display.textContent = "Game over";
			return;
		}
        if (--timer < 0) {
            timer = duration;
        }
        
    }, 1000);
}
</script> 

</head>
<body>
<div class = "header"> Aim Trainer 69420</div>

<div>
	<button type="button" id="start" onclick="start()">START</button>
	<button type="button" id="button" onclick="clickMe()"></button>
</div>
 <div class = "timer">Press it as many times as you can in <span id="time">30</span> seconds!</div>
 <p class = "counter" id="count"></p>
</body>
</html>