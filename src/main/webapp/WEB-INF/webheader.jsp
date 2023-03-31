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
    <title>Website</title>
    <base href="http://localhost:8080/itec4020grp3/">
    
<style type="text/css">

.container {
	display: block;
	background-color: #F08080;
}

.col {
	text-align: center;
}

h1 {
	color: white;
	font-size: 70px;
}

p {
	font-size: 20px;
}

.topnav {
	overflow: hidden;
	background-color: #F0809E;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 20px 15px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a.active {
	background-color: C21C10;
	color: black;
}

.topnav a:hover {
	background-color: #F0AD80;
}

.topnav .search-con {
	float: right;
	padding: 6px;
	margin-top: 10px;
}

.topnav [input=text] {
	padding: 6px;
}

.topnav .search-con button {
	background-color: #F09E80;	
	cursor: pointer;
	padding: 6px 10px;
}


.topnav .search-con button:hover {
	background-color: #F0AD80;
}

.logout-btn {
	border-color: #black;
	background-color: white;
	font-size: 20px;
	text-align: center;
	padding: 8px;
	float:right;
	color: black;
	
}

.logout-btn:hover {
	background-color: #ff5252;
}

</style>
</head>

<body oncopy="alert('禁止复制');return false;">
<div class="container" role="header">
    <div class="row">
        <div class="col">
            <h1 >
                <strong>Chinese Food Store</strong>
            </h1>
        </div>
        
        <a href="./GoodByeServlet"><button type="submit" class="logout-btn" id="Logout">Log Out</button></a>
    </div>
    
    <p>Welcome, <strong>${sessionScope.name}</strong></p>
        
	<div class="topnav">
	<a href="/itec4020grp3/SecurityUserPageCheck" id='product' ><strong>Product</strong></a>
	<a href="/itec4020grp3/UserCheck" id='Aboutus'><strong>About Us</strong></a>
	<a href="/itec4020grp3/Location" id='Location'><strong>Location</strong></a>
		<div class="search-con">
			<input type="text" id="searchfield" placeholder="Search..">
        	<button type="submit" id="search">Search</button>
		</div>
	</div>
</div>
</body>
</html>
