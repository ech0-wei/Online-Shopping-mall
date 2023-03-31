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
	background-color: #F08080;
}

#mainsection {
	margin-top: 50px;	
	margin-bottom:50px;
	padding-bottom: 400px;
}

.location {
	display: flex;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
	background-color: #F08F80;
	padding: 20px 10px;
	border-radius: 10px;
}

.location-box {
	flex: 30%;
	text-align:center;
	margin: 10px;
	paadding: 10px;
	border: 2px solid black;
	border-radius: 10px;
}

</style>
</head>

<body oncopy="alert('Can not copy');return false;", onpaste="alert('Can not paste'); return false;">
<%@include file="webheader.jsp"%>
<!--Main body header-->
<div id='mainsection'>
	
	<div class="location">
		<div class="location-box">
			<h3>Toronto</h3>
			<p>Address: </p>
			<p>21 Some Street, Toronto, Ontario </p>
			<p>N0N 1O1 </p>
		</div>
		
		<div class="location-box">
			<h3>Scarborough</h3>
			<p>Address: </p>
			<p>21 Some Street, Scarborough, Ontario </p>
			<p>R3R 2B4 </p>
		</div>
		
		<div class="location-box">
			<h3>Etobicoke</h3>	
			<p>Address: </p>
			<p>21 Not Real Rd., Etobicoke, Ontario </p>
			<p>A6A 5M2 </p>
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
            }else if((e.ctrlKey)&&(e.keyCode==85)){//

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