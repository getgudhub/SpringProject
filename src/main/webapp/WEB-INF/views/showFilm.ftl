<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${film.pavadinimas} informacija</title>
	<#include "templates/header.ftl">
	<style>
		a .button{
			display: block;
			text-align: center;
		}
		h6{
			margin-top: 500px;
		}
		.button{ 
				margin-top:30px;
				display: block;
				text-align: center;
			}
	</style>
</head>
<body>
		
<div class=container-fluid id="tablefluid">
	<div class="container">
		<div class="table-responsive">
		<caption>Filmo informacija</caption>
			<table class="table table-striped">
				<tr>
					<td><b>Id</b></td>
					<td>${film.id}</td>
				</tr>
				<tr>
					<td><b>Pavadinimas</b></td>
					<td>${film.pavadinimas}</td>
				</tr>
				<tr>
					<td>Zanras</td>
					<td>${film.zanras}</td>
				</tr>
				<tr>
					<td>Rezisierius</td>
					<td>${film.rezisierius}</td>
				</tr>
				<tr>
					<td>Aktoriai</td>
					<td>${film.aktoriai}</td>
				</tr>
				<tr>
					<td>Kinuose nuo</td>
					<td>${film.nuoKada}</td>
				</tr>
				<tr>
					<td>Trukme</td>
					<td>${film.trukme} min</td>
				</tr>
			</table>
		</div>
	</div>
</div>
	<div>
		<a type="button" href="/CinemaFilms" class="button">Atgal</a>
	</div>
	
</body>

<footer>
	<center><h6> All rights reserved @KITM Lab </h6></center>
</footer>
</html>