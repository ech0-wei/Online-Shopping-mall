<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <!-- Bootstrap CSS and link with css files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <base href="http://localhost:8080/itec4020grp3/">
    <style>
    h1 {
    font-size: 50px;
    }
    
    h1, h2, h3{
    text-align: center;
    color: #3F3441;
    }
    
    body {
    background-color: pink;
    }
    
    .imgcon {
    text-align: center;
    margin: 30px 0 15px 0;
    }
    
    .container {
    padding: 20px;
    }
    
    .logincon {
    margin: 30px 100px 20px;
    }
    
	form {
	border: 3px solid #F0809E;
	background-color: white;
	}
	
	input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	}
	
	button {
	text-align: center;
	background-color: #F0808F;
	color: black;
	padding: 12px 0;
	margin: 10px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	border-radius: 8px;
	}
	
	button:hover {
	opacity: 0.8;
	}
    </style>
</head>

<body>
<div>
	<h2>ITEC4020 Assignment 2</h1>
	<h1>Chinese Food Store</h2>
    <div class="logincon">
    	<form method="post", action="./HelloServlet">
     
        <div class="imgcon">
        	<img src="${pageContext.request.contextPath}/Pic/kitty.png" width="100px" height="100px">
    		<h3>Hello, dear users, welcome home</h3>
    	</div>
     
        <div class="container">
        	<label for="Name">Name: </label>
        	<input type="text" placeholder="Please enter your name" id="Name" name="name" value="${cookie.name.value}"></br>
        
        	<label for="Password">Password: </label>
        	<input type="password" name="password" placeholder="Please enter your Password" id="Password"></br>
        
        	<button type="submit" id="Sub"> Login </button>
        	<button type="button" id="Res"> Reset </button>
     	</div>
    	</form>
    </div>
</div>

</body>

</html>
<script>
    var but2 = document.querySelector('#Res');
    var i1 = document.querySelector('#Name');
    var i2 = document.querySelector('#Password');
    var uname = document.querySelector('#Name');
    var upswd = document.querySelector('#Password');
    but2.onclick = function () {
        i1.value = "";
        i2.value = "";
    }
    $(function() {
        $(function(){

            if(window.history && window.history.pushState){
                $(window).on('popstate',function(){
                    window.history.pushState('forward', null, '#');
                    window.history.forward(1);
                });
            }
            window.history.pushState('forward', null, '#');//兼容IE
            window.history.forward(1);
        });
    });
    if(window.name != "noReload"){
        window.name = "noReload";
        location.reload();
    } else {
        window.name = "";
    }
    if (document.addEventListener) {

        window.addEventListener('pageshow', function (event) {
            if (event.persisted || window.performance && window.performance.navigation.type == 2){
                location.reload();
            }
        },false);
    }
   javascript:window.history.forward(1);
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
            alert("View Source not allow");
            return false;
        }
    }
</script>