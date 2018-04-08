<!--
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%> 
-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<title>Cinema films</title>
<#include "templates/header.ftl">
<style>
	ul li{
		display:inline-block;
		height:50px;
	}
	#pridetf{
		padding:10px;
		font-size:18px;
		color:#8B008B;
	}
	#pridetf a{
		display:block;
		width:130px;
	}
	h1{
		color:blue;
	}
	a:link, active{
		text-decoration:none;
		color:blue;
	}
	table{
		padding-top:20px;
	}
	.container a:hover{
		text-decoration:underline;
		color:#8B008B;
	}
	th, td{
		padding:0px 10px 0px 10px;
	}
	.container{
		background-image: url("/resources/img/movies.jpg");
		background-color:white;
		height:100% fill;
		border-right:5px solid #00BFFF;
		border-left:5px solid #00BFFF;
	}
	#tablefluid{
		height:100% ;
		background: linear-gradient(white, #00BFFF);
	}
</style>
</head>
<body>

<div class=container-fluid id="tablefluid">
	<div class="container">
		<div id="pridetf">
			<center><a class="button" id="pridetf" href="/CinemaFilms/addFilm">Prideti filma</a></center>
		</div>
	
		 <div class="table-responsive">
		  <table class="table">
			<tr>
				<th>Id</th>
				<th>Pavadinimas</th>
				<th>Zanras</th>
				<th>Kinuose nuo</th>
			</tr>
			<#list films as film>
				<tr>
					<td><a href="/CinemaFilms/film/${film.id}">${film.id}</a></td>
					<td>${film.pavadinimas}</td>
					<td>${film.zanras}</td>
					<td>
						<#setting date_format="yyyy-MM-dd">
						${film.nuoKada?date}
					</td>
					<td><a href="/CinemaFilms/delete/${film.id}">Trinti</a></td>
					<td><a href="/CinemaFilms/update/${film.id}">Redaguoti</a></td>
				</tr>
			</#list>
		</table>
	   </div>
	</div>
</div>
</body>

<footer>
	<center><h6> All rights reserved @KITM Lab </h6></center>
</footer>
</html>