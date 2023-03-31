<%--
  Created by IntelliJ IDEA.
  User: echo
  Date: 2021/11/13
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Title</title>
<base href="http://localhost:8080/itec4020grp3/">
   
<style>
.footer {
	margin-top: 10px;
	bottom: 0;
	display:block;
	background-color: #E83C3C;
}

.botimg {
	width: 100px;
	height: 100px;
}

.bot1 {
	float: right;
	text-align: right;
	padding-right: 10px;
}

.bot2 {
	float: left;
	padding-left: 15px;
}

.botimg {
	float: right;
}

</style>
</head>
<body oncopy="alert('禁止复制');return false;">
<!--bottom-->
<div class="footer">
    <div class="bot1">
        <p class="botp">Looking forward to your next visit!</p>
        <img src="/itec4020grp3/Pic/kitty.png" class="botimg" >
    </div>
    
    <div class="bot2">
        <p class="botp1">
            <label>Contact us:</label></br>
            <a href="">Email:ech0.l@hotmail.com</a></br>
            <a href="">Phone number:647-7000-0000</a>
        </p>
    </div >
</div>
</body>
</html>
