<#import "templates/spring.ftl" as spring />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<title>Esamo vartotojo redagavimas</title>
		<style>
			.container{
				background-color:white;
				text-align: center;
				height:100%;
			}
			.container-fluid{
				height:100%;
				background: linear-gradient(white, #00BFFF);
			}
			html, body{
				height:100%;
			}
			form{
				margin-top:30px;
			}
			.button{ 
				margin-top:30px;
				display: block;
				text-align: center;
			}
			.duom{
				margin-top:50px;
			}
		</style>
	</head>
	<body>
	<div class="container-fluid">
		<div class="container">
			<@spring.bind "film"/>
			<#if noErrors??>
				<div class="duom">
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
					<td>
						<#setting date_format="yyyy-MM-dd">
						${film.nuoKada?date}
					</td>
				</tr>
				<tr>
					<td>Trukme</td>
					<td>${film.trukme} min</td>
				</tr>
			</table>
					
				</div>
			<#else>
				<form name="film" action="/CinemaFilms/updateFilm/${film.id}" method="post">
					
					Pavadinimas:<br>
					<@spring.formInput "film.pavadinimas" /><br>
					<@spring.showErrors "<br>" /><p>
					Zanras:<br>
					<@spring.formInput "film.zanras" /><br>
					<@spring.showErrors "<br>" /><p>
					Rezisierius:<br>
					<@spring.formInput "film.rezisierius" /><br>
					<@spring.showErrors "<br>" /><p>
					Aktoriai:<br>
					<@spring.formInput "film.aktoriai" /><br>
					<@spring.showErrors "<br>" /><p>
					Kinuose nuo:<br>
					<@spring.formInput "film.nuoKada"/><br>
					<@spring.showErrors "<br>" /><p>
					Trukme:<br>
					<@spring.formInput "film.trukme" /><br>
					<@spring.showErrors "<br>" /><p>
					<input type="submit" value="Atnaujinti">
				</form>
			</#if>
			<div>
				<a type="button" href="/CinemaFilms" class="button">Grizti</a>
			</div>
		</div>
		
	</div>
	</body>
</html>