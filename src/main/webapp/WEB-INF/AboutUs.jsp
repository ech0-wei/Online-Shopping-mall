<%--
  Created by IntelliJ IDEA.
  User: echo
  Date: 2021/11/15
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<!-- Bootstrap CSS and link with css files -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<base href="http://localhost:8080/itec4020grp3/">

<style>
body {
	background-color: #F0808F;
}

#mainsection {
	text-align:center;
	margin-top: 50px;	
	margin-bottom:50px;
}

.cont {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
	background-color: #F08F80;
	padding: 50px 0;
	border-radius: 10px;
}

.avatarimg {
	width:400px;
	height:400px;
	border: 1px solid black;
	border-radius: 5px;
	padding:5px;
}

.avatar {
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 10px;
	width: 50%;
	text-align:center;
}

.information {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 60%;
	background-color: #F09E80;
	text-align:left;
	padding: 5px 10px;
	border-radius: 5px;
	
}

</style>

</head>

<body oncopy="alert('Can not copy');return false;", onpaste="alert('Can not paste'); return false;">
<%@include file="webheader.jsp"%>
<!--Main body header-->
<div id='mainsection'>
	<div class="cont">
		<div class="avatar">
			<img src="/itec4020grp3/Pic/roblox.png" class="avatarimg">
		</div>
		
		<div class="information">
			<h1>About Us</h1>
			<p>Hello. This is just some random sample text. The purpose of this website is to demonstrate our understanding of secure dynamic web pages.</p>
			<p>There's also some pictures of food in our main page. </p>
		</div>

	</div>
</div>
<%@include file="webfooter.jsp"%>
</body>

</html>
<script type='text/javascript'>
	if(window.name != "noReload"){
	    window.name = "noReload";
	    location.reload();
	} else {
	    window.name = "";
	}
	
	javascript:window.history.forward(1);
	function noMenuOne() {
	    alert('Can not right click');
	    return false;
	}
	document.oncontextmenu = noMenuOne
	window.onload=function(){
	    document.onkeydown=function(){
	        var e=window.event||arguments[0];
	        if(e.keyCode==123){
	            alert("View Source not allow");
	            return false;
	        }else if((e.ctrlKey)&&(e.shiftKey)&&(e.keyCode==73)){
	            alert("View Source not allow");
	            return false;
	        }else if((e.ctrlKey)&&(e.keyCode==85)){//追加
	
	            return false;
	        }
	    };
	    document.oncontextmenu=function(){
	        alert("View Source is not allow");
	        return false;
	    }
	}
	
	window.onload=function(){
	    document.onkeydown=function(){
	        var e=window.event||arguments[0];
	        if((e.ctrlKey)&&(e.keyCode==80)){
	            alert("No printing allowed");
	            return false;
	        }
	    };
	    document.oncontextmenu=function(){
	        alert("Printing is not allow");
	        return false;
	    }
	}
	window.onkeydown = window.onkeyup = window.onkeypress = function () {
		window.event.returnValue = false;
		return false;
	}

	var h = window.innerHeight,w=window.innerWidth;
	window.onresize = function () {
		if (h!= window.innerHeight||w!=window.innerWidth){
			window.close();
			window.location = "about:blank";
		}
	}
</script>