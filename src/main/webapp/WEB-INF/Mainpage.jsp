<%--
  Created by IntelliJ IDEA.
  User: echo
  Date: 2021/11/12
  Time: 16:00
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
	background-color: #F0808F;
	margin-top: 50px;	
	margin-bottom:50px;
	margin-left: auto;
	margin-right: auto;
	width: 95%;
}

.row1, .row2 {
	display: flex;
}

.column {
	flex: 33.33%;
	padding: 20px;
	background-color: #F09380;
	border-color: black;
	}

.food {
	height: 500px;
	border: 1px solid black;
	border-radius: 5px;
	
}

.addtocart button {
	float:right;
}

</style>
</head>

<body oncopy="alert('Can not copy');return false;", onpaste="alert('Can not paste'); return false;">
<%@include file="webheader.jsp"%>
<!--Main body header-->
<div id='mainsection'>
	<div class="row1">
		<div class="column">
		<img src="/itec4020grp3/Pic/jizhua.png" class="food" style="width:100%">
			<p>Jizhua</p>
			<p>Price: $7.99</p>
			<div class="addtocart">
			<p>
				Quantity:
				<input type="number" id="quantity" name="quantity" min="0" max="100" step="1" "value="0">
			</p>
			<p>
			<button id="cart">
				Add to Cart
				<img src="/itec4020grp3/Pic/shoppingcart.png" style="width:30px;height:30px;">
			</button>
			</div>
			</p>
		</div>

		<div class="column">
		<img src="/itec4020grp3/Pic/buding.png" class="food" style="width:100%">
			<p>Pudding</p>
			<p>Price: $10.99</p>
			<div class="addtocart">
			<p>
				Quantity:
				<input type="number" id="quantity" name="quantity" min="0" max="100" step="1" "value="0">
			</p>
			<p>
			<button id="cart">
				Add to Cart
				<img src="/itec4020grp3/Pic/shoppingcart.png" style="width:30px;height:30px;">
			</button>
			</div>
			</p>
		</div>
		
		<div class="column">
			<img src="/itec4020grp3/Pic/tudou.png" class="food" style="width:100%">
			<p>Tudou</p>
			<p>Price: $3.99</p>
			<div class="addtocart">
			<p>
				Quantity:
				<input type="number" id="quantity" name="quantity" min="0" max="100" step="1" "value="0">
			</p>
			<p>
			<button id="cart">
				Add to Cart
				<img src="/itec4020grp3/Pic/shoppingcart.png" style="width:30px;height:30px;">
			</button>
			</div>
			</p>
		</div>
		
	</div>
	
	<div class="row2">
		<div class="column">
			<img src="/itec4020grp3/Pic/yanshao.jpg" class="food" style="width:100%">
			<p>Yanshao</p>
			<p>Price: $2.99</p>
			<div class="addtocart">
			<p>
				Quantity:
				<input type="number" id="quantity" name="quantity" min="0" max="100" step="1" "value="0">
			</p>
			<p>
			<button id="cart">
				Add to Cart
				<img src="/itec4020grp3/Pic/shoppingcart.png" style="width:30px;height:30px;">
			</button>
			</div>
			</p>
		</div>
		
		<div class="column">
			<img src="/itec4020grp3/Pic/chang.jpg" class="food" style="width:100%">
			<p>Chang</p>
			<p>Price: $5.99</p>
			<div class="addtocart">
			<p>
				Quantity:
				<input type="number" id="quantity" name="quantity" min="0" max="100" step="1" "value="0">
			</p>
			<p>
			<button id="cart">
				Add to Cart
				<img src="/itec4020grp3/Pic/shoppingcart.png" style="width:30px;height:30px;">
			</button>
			</div>
			</p>
		</div>
		
		<div class="column">
			<img src="/itec4020grp3/Pic/egg.jpg" class="food" style="width:100%">
			<p>Egg</p>
			<p>Price: $0.99</p>
			<div class="addtocart">
			<p>
				Quantity:
				<input type="number" id="quantity" name="quantity" min="0" max="100" step="1" "value="0">
			</p>
			<p>
			<button id="cart">
				Add to Cart
				<img src="/itec4020grp3/Pic/shoppingcart.png" style="width:30px;height:30px;">
			</button>
			</div>
			</p>
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
		document.onkeydown = function () {
			var e = window.event || arguments[0];
			//F12
			if (e.keyCode == 123) {
				return false;
				//Ctrl+Shift+I
			} else if ((e.ctrlKey) && (e.shiftKey) && (e.keyCode == 73)) {
				return false;
				//Shift+F10
			} else if ((e.shiftKey) && (e.keyCode == 121)) {
				return false;
				//Ctrl+U
			} else if ((e.ctrlKey) && (e.keyCode == 85)) {
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
